function sum() {
    let total = 0;

    for (let i=0; i < arguments.length; i++) {
        total += arguments[i];
    }

    return total;


}


function sum(...args) {
    let total = 0

    for (let i = 0; i < args.length; i++){
        total += args[i]

    }

    return total;

}

Function.prototype.myBind1 = function(ctx) {
    const fn = this
    const bindArgs = Array.from(arguments).slice(1)
    return function _boundFn() { 
        const callArgs = Array.from(arguments);
        return fn.apply(ctx, callArgs.concat(bindArgs))
    }


}