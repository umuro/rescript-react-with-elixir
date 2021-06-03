// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import deps with the dep name or local files with a relative path, for example:
//
//     import {Socket} from "phoenix"
//     import socket from "./socket"
//
import "phoenix_html"
import "@rescript/react/src/React.bs.js"
import "@rescript/react/src/ReactDOM.bs.js"
import "@rescript/react/src/ReactDOMServer.bs.js"
import "@rescript/react/src/ReactDOMStyle.bs.js"
import "@rescript/react/src/ReactEvent.bs.js"
// import "@rescript/react/src/ReactTestUtils.bs.js"
import "@rescript/react/src/RescriptReactErrorBoundary.bs.js"
import "@rescript/react/src/RescriptReactRouter.bs.js"

//.concat(glob.sync('./node_modules/@rescript/react/src/**/*.js'))
