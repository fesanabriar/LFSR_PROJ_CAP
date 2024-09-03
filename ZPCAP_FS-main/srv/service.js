const cds = require('@sap/cds');
const { inherits } = require('util');
const moment = require('moment');

module.exports = class Service extends cds.ApplicationService {
    init() {
        const { Order, Items } = this.entities;

        //before
        //on
        //after
        //Criticaly
        this.before('NEW', Items.draft, async REQ => {
         //  req.data.Releasedate = moment().format("YYYY-MM-DD");
        }
        );
        this.before('NEW', Order.drafts, async req => {

        });
        this.after('UPDATE', Order.draft, async req => {

        })
        return super.init();
    }
};

async function update(iID, iCode) {
    return await cds.run(UPDATE.entity(Order.drafts));
};