# A project seed for the single spa parcel integration

It's a recipe for creating a bundle with a micro frontend widget using a single spa parcel (https://single-spa.js.org/docs/parcels-overview/).

With this configuration, you can use the ent cli (https://dev.entando.org/v6.3/docs/reference/entando-cli.html) to performing the different tasks

1. cp -r bundle-src/* bundle
2. ent prj init
3. ent prj fe-build -a
4. ent prj pbs-init (it asks for the git bundle repo)
5. ent prj fe-push
6. for a local entando installation: ent generate-cr | ent kubectl apply -n entando -f -

Install the bundle in the app builder, then create a page with the single-spa-react-widget

enjoy
