import Controller from 'sap/fe/core/PageController';
import Event from 'sap/ui/base/Event';

/**
 * @namespace devtoberfest.travel.ext.main.Main.controller
 */
export default class Main extends Controller {

    /**
     * Called when a controller is instantiated and its View controls (if available) are already created.
     * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
     * @memberOf devtoberfest.travel.ext.main.Main
     */
    // public onInit(): void {
    //
    //}

    /**
     * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
     * (NOT before the first rendering! onInit() is used for that one!).
     * @memberOf devtoberfest.travel.ext.main.Main
     */
    // public  onBeforeRendering(): void {
    //
    //  },

    /**
     * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
     * This hook is the same one that SAPUI5 controls get after being rendered.
     * @memberOf devtoberfest.travel.ext.main.Main
     */
    // public  onAfterRendering(): void {
    //
    //  },

    /**
     * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
     * @memberOf devtoberfest.travel.ext.main.Main
     */
    // public onExit(): void {
    //
    //  }

    public onChartSelectionChanged(event: Event): void {
        if (event.getParameter("selected")) {
            const data = event.getParameter("data")[0].data;
            const routing = this.getExtensionAPI().routing;
            routing.navigateToRoute("AirlineObjectPage", { AirlineKey: `'${data.AirlineID}'` });
        }
    }
}