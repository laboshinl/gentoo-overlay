# LxMx Gentoo overlay

Install using [Layman](http://www.gentoo.org/proj/en/overlays/userguide.xml):

```
layman -o https://raw.github.com/lxmx/gentoo-overlay/master/overlay.xml -f -a lxmx
```

## chef-omnibus

This overlay features a [chef-omnibus](http://www.opscode.com/chef/install/) adaptation for Gentoo.
To install:

```
echo "app-admin/chef-omnibus ~amd64" >> /etc/portage/package.keywords
emerge app-admin/chef-omnibus
```
