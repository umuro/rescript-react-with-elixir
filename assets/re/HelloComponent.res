// Dom access can actually fail. ReScript
// is really explicit about handling edge cases!
switch(ReactDOM.querySelector("#HelloComponent")){
| Some(root) => ReactDOM.render(<div> {React.string("Hello from ReScript")} </div>, root)
| None => () // do nothing
}
