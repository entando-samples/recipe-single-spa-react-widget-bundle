# A project seed for the single spa parcel integration

It's a recipe for creating a bundle with a micro frontend widget using a single spa parcel (https://single-spa.js.org/docs/parcels-overview/).

With this configuration, you can use the ent cli (https://dev.entando.org/v6.3/docs/reference/entando-cli.html) to performing the different tasks

1. cp -r bundle-src/\* bundle
2. ent prj init
3. ent prj fe-build -a
4. ent prj pbs-init (it asks for the git bundle repo)
5. ent prj fe-push
6. for a local entando installation: ent prj generate-cr | ent kubectl create -n entando -f -

Install the bundle in the app builder.
The bundle contains:

1. import_map_ux_fragment with the import-map definition and all the script imports
2. single-spa-react-router-widget an example for hashrouting a MFE widget inside entando
3. single-spa-react-widget a simple parcel

Create a page tamplate with the import_map_ux_fragment in it, then design a page with the widgets

enjoy
