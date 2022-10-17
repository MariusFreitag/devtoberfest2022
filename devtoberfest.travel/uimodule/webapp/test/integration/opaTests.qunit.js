/* global QUnit */

QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
    "use strict";

    sap.ui.require(["devtoberfest/travel/test/integration/AllJourneys"], function () {
        QUnit.start();
    });
});
