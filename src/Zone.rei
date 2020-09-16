/** https://moment.github.io/luxon/docs/class/src/zone.js~Zone.html */ 

type t;

[@bs.send] external isValid: t => bool = "isValid";

[@bs.send] external name: t => string = "name";

[@bs.send] external type_: t => string = "type";

[@bs.send] external universal: t => bool = "universal";

[@bs.send] external equals: (t, t) => bool = "name";

module OffsetFormat: {
  type t = [ | `long | `short ];

  
};

[@bs.send]
external formatOffset: (t, float, OffsetFormat.t) => bool = "formatOffset";

let offset: (t, float) => float;

type options = {
  format: OffsetFormat.t,
  locale: string,
};

let offsetName: (t, float, options) => string;

module IANA: {
  //  https://moment.github.io/luxon/docs/class/src/zones/IANAZone.js~IANAZone.html

  let create: string => t;

  let isValidSpecifier: string => bool;

  let isValidZone: string => bool;

  let resetCache: unit => unit;
};

module FixedOffset: {
  // https://moment.github.io/luxon/docs/class/src/zones/fixedOffsetZone.js~FixedOffsetZone.html

  let utcInstance: t;

  let instance: float => t;

  let parseSpecifier: string => t;

  let formatOffset: t => string;

  let offset: t => int;

  let offsetName: t => string;
};
let utc: t;

module Invalid: {
  // https://moment.github.io/luxon/docs/class/src/zones/invalidZone.js~InvalidZone.html

  let make: unit => t;
};
let invalid: unit => t;

module Local: {
  //  https://moment.github.io/luxon/docs/class/src/zones/localZone.js~LocalZone.html

  let instance: t;
};
let local: t;
