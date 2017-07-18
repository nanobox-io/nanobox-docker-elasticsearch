# Elasticsearch ![Build Status Image](https://travis-ci.org/nanobox-io/nanobox-docker-elasticsearch.svg)
This is an Elasticsearch Docker image used to launch a Elasticsearch service on Nanobox. To use this image, add a data component to your `boxfile.yml` with the `nanobox/elasticsearch` image specified:

```yaml
data.elasticsearch:
  image: nanobox/elasticsearch:5
```

## Elasticsearch Configuration Options
Elasticsearch components are configured in your `boxfile.yml`. All available configuration options are outlined below.

###### Quick Links
[version](#version)
[cluster\_name](#cluster-name)

#### Overview of Elasticsearch Boxfile Settings
```yaml
data.elasticsearch:
  image: nanobox/elasticsearch:5
  config:
    cluster_name: cluster1
```

### Version
When configuring a Elasticsearch component in your `boxfile.yml`, you can specify which version to use by appedending it to your `image`. The following version(s) are available:

- 5

**Note:** Due to version compatibility constraints, elasticsearch versions cannot be changed after the component is created. To use a different version, you'll have to create a new Elasticsearch component.

#### version
```yaml
# default setting
data.elasticsearch:
  image: nanobox/elasticsearch:5
```

### Cluster Name
This allows you to give a custom name to the Elasticsearch cluster
By default it uses the name of the component.

#### cluster\_name
```yaml
data.elasticsearch:
  image: nanobox/elasticsearch:5
  config:
    cluster_name: custom_name
```

## Help & Support
This is a Elasticsearch Docker image provided by [Nanobox](http://nanobox.io). If you need help with this image, you can reach out to us in the [Nanobox Slack channel](http://nanoboxio.slack.com) (nanoboxio). If you are running into an issue with the image, feel free to [create a new issue on this project](https://github.com/nanobox-io/nanobox-docker-elasticsearch/issues/new).

## License

Mozilla Public License, version 2.0
