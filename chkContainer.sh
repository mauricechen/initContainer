#!/bin/env bash
container=$1

_runCommand()
{
  _command="${1}"
  echo =======; echo "$_command"
  eval "${_command}"
  echo;
}

_runCommand "${container} version"
_runCommand "kubectl version"
_runCommand "kubectl coluster-info"
_runCommand "kubectl get all"
_runCommand "${container} status"
_runCommand "${container} service list"
_runCommand "${container} dashboard"
_runCommand "kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080"
_runCommand "kubectl expose deployment hello-minikube --type=NodePort"
_runCommand "kubectl get pods"
_runCommand "${container} service list"
_runCommand "curl \\\$(minikube service hello-minikube --url)"
