import { combineReducers } from "redux";
import teasReducer from "./teas_reducer";

const rootReducer = combineReducers({
    teas: teasReducer
    // users: usersReducer, 
    // s        t: stocksReducer, 
});

export default rootReducer;