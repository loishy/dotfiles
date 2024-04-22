helm repo add jaegertracing https://jaegertracing.github.io/helm-charts
helm dep update .

helm install \
     --atomic \
     --wait \
     --create-namespace \
     --namespace observability \
     -f values.yaml \
     jaeger ./

