<#assign wp=JspTaglibs["/aps-core"]>
<script nonce="<@wp.cspNonce />" src="https://cdn.jsdelivr.net/npm/systemjs/dist/system.js" ></script>
<script nonce="<@wp.cspNonce />" src="https://cdn.jsdelivr.net/npm/systemjs/dist/extras/amd.js" ></script>
<script nonce="<@wp.cspNonce />" type="systemjs-importmap">
{
  "imports": {
    "single-spa": "https://cdn.jsdelivr.net/npm/single-spa/lib/system/single-spa.dev.js",
    "single-spa-react-widget": "<@wp.resourceURL />single-spa-react-widget-bundle/static/js/entando-mf-recipes-sspa-parcel-recipe.js"
  }
}
</script>

<div id="single-spa-react-widget"></div>

<script nonce="<@wp.cspNonce />">
    System.import('single-spa').then(function (singleSpa) {
        System.import('single-spa-react-widget').then(parcel=>{
            const domElement = document.getElementById('single-spa-react-widget');
            const parcelProps = {domElement, customProp1: 'foo'};
            singleSpa.mountRootParcel(parcel, parcelProps);
        })

        singleSpa.start();
    });
</script>
