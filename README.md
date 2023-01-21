# procon_bypass_man_cloud-base
https://hub.docker.com/repository/docker/jiikkko/procon_bypass_man_cloud-base

* build & push
    * docker buildx build --platform linux/arm64 -t jiikkko/procon_bypass_man_cloud-base:ruby3.2.0-arm64 . --push
    * docker buildx build --platform linux/amd64 -t jiikkko/procon_bypass_man_cloud-base:ruby3.2.0-amd64 . --push
* multi arch
    * docker manifest create jiikkko/procon_bypass_man_cloud-base:ruby3.2.0 jiikkko/procon_bypass_man_cloud-base:ruby3.2.0-arm64
    * docker manifest create jiikkko/procon_bypass_man_cloud-base:ruby3.2.0 jiikkko/procon_bypass_man_cloud-base:ruby3.2.0-amd64
    * docker manifest annotate jiikkko/procon_bypass_man_cloud-base jiikkko/procon_bypass_man_cloud-base:ruby3.2.0-arm64 --arch arm64
    * docker manifest annotate jiikkko/procon_bypass_man_cloud-base jiikkko/procon_bypass_man_cloud-base:ruby3.2.0-amd64 --arch amd64
    * docker manifest push jiikkko/procon_bypass_man_cloud-base:ruby3.2.0

## TODO
* CIでビルドする
