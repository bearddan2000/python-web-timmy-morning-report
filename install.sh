#!/usr/bin/env bash
basefile="install"
logfile="general.log"
timestamp=`date '+%Y-%m-%d %H:%M:%S'`

if [ "$#" -ne 1 ]; then
  msg="[ERROR]: $basefile failed to receive enough args"
  echo "$msg"
  echo "$msg" >> $logfile
  exit 1
fi

function setup-logging(){
  scope="setup-logging"
  info_base="[$timestamp INFO]: $basefile::$scope"

  echo "$info_base started" >> $logfile

  echo "$info_base removing old logs" >> $logfile

  rm -f $logfile

  echo "$info_base ended" >> $logfile

  echo "================" >> $logfile
}

function root-check(){
  scope="root-check"
  info_base="[$timestamp INFO]: $basefile::$scope"

  echo "$info_base started" >> $logfile

  #Make sure the script is running as root.
  if [ "$UID" -ne "0" ]; then
    echo "[$timestamp ERROR]: $basefile::$scope you must be root to run $0" >> $logfile
    echo "==================" >> $logfile
    echo "You must be root to run $0. Try the following"
    echo "sudo $0"
    exit 1
  fi

  echo "$info_base ended" >> $logfile
  echo "================" >> $logfile
}

function docker-check() {
  scope="docker-check"
  info_base="[$timestamp INFO]: $basefile::$scope"
  cmd=`docker -v`

  echo "$info_base started" >> $logfile

  if [ -z "$cmd" ]; then
    echo "$info_base docker not installed"
    echo "$info_base docker not installed" >> $logfile
  fi

  echo "$info_base ended" >> $logfile
  echo "================" >> $logfile

}

function docker-compose-check() {
  scope="docker-compose-check"
  info_base="[$timestamp INFO]: $basefile::$scope"
  cmd=`docker-compose -v`

  echo "$info_base started" >> $logfile

  if [ -z "$cmd" ]; then
    echo "$info_base docker-compose not installed"
    echo "$info_base docker-compose not installed" >> $logfile
  fi

  echo "$info_base ended" >> $logfile
  echo "================" >> $logfile

}
function usage() {
    echo ""
    echo "Usage: "
    echo ""
    echo "-u: start."
    echo "-d: tear down."
    echo "-h: Display this help and exit."
    echo ""
}
function start-up(){

    local scope="start-up"
    local docker_img_name=`head -n 1 README.md | sed 's/# //'`
    local info_base="[$timestamp INFO]: $basefile::$scope"
    local current_dir=$PWD

    echo "$info_base started" >> $logfile

    echo "$info_base starting services" >> $logfile
    
    # needed for web crawlers
    xhost + local:docker

    # region merge
    # clean up old output
    # rm -Rf $(pwd)/merge-pdf/bin && mkdir $(pwd)/merge-pdf/bin && cp $(pwd)/merge-pdf/p-*.sh $(pwd)/merge-pdf/bin

    # rm -Rf $(pwd)/merge-pdf-1/bin && mkdir $(pwd)/merge-pdf-1/bin
    # end region merge

    # region image
    # clean up old graphs; makes project cleaner
    cd $PWD/py-srv/bin/static/img

    rm -f $( ls | egrep 'out\.png' )

    cd $current_dir
    # end region image

    # region data
    # pulls and distribute common data file
    if [[ -e "${PWD}/py-srv/bin/data.json" ]]; then
      rm -f "${PWD}/py-srv/bin/data.json"
    fi
      cp "${PWD}/data/data.json" "${PWD}/py-srv/bin"

    if [[ -e $PWD/db/neo4j/bin/data.json ]]; then
      rm -f $PWD/db/neo4j/bin/data.json
    fi
      cp $PWD/data/data.json $PWD/db/neo4j/bin
    # end region data

    # pre build main application; seems to help when replication
    sudo docker build -t timmy-main-srv $PWD/py-srv

    # pre build webcrawler
    sudo docker build -t timmy-web-crawler $PWD/py-web-crawler

    # --build => erase cache and rebuild
    # --remove-orphans => stop and rm dangling services
    # --profile => user defined [ db-dev, dev, test, prod, nightly-batch]
    # --scale <service>=# => creates replicants a.k.a swarm

    docker compose --profile prod \
      -f docker-compose-db.yml \
      -f docker-compose-app.yml \
      -f docker-compose-nightly-batch.yml \
      -f docker-compose-nightly-batch-stats.yml \
      -f docker-compose-prod-batch.yml up --build --remove-orphans 

    # INFO REFERENCE
    # docker ps --format '{{.Image}} {{.Names}}'

    echo "$info_base ended" >> $logfile

    echo "================" >> $logfile
}
function tear-down(){

    scope="tear-down"
    info_base="[$timestamp INFO]: $basefile::$scope"

    echo "$info_base started" >> $logfile

    docker compose down

    docker stop $( docker ps -aq )

    echo "$info_base starting services" >> $logfile

    echo "$info_base ended" >> $logfile

    echo "================" >> $logfile
}

root-check
docker-check
docker-compose-check

while getopts ":udh" opts; do
  case $opts in
    u)
      setup-logging
      start-up ;;
    d)
      tear-down ;;
    h)
      usage
      exit 0 ;;
    /?)
      usage
      exit 1 ;;
  esac
done
