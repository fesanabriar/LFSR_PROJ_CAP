namespace com.logali;

using {cuid} from '@sap/cds/common';


type ZDE_MEINS : String(2);

entity zorden_fs : cuid {
    Email        : String(30);
    Firstname    : String(30);
    Lastname     : String(30);
    Country      : String(30);
    Createon     : Date default $now;
    Deliverydate : DateTime;
    Orderstatus  : Integer enum {
        Open     = 1;
        Accepted = 2;
        Refused  = 3;
    };
    Imageurl     : LargeBinary @UI.IsImage @Core.MediaType: 'image/jpg';
    Items        : Composition of many zitems_fs
                       on Items.Order = $self;
}

entity zitems_fs : cuid {
        Name             : String(40);
        Description      : String(40);
        Releasedate      : Date;
        Discontinueddate : Date;
        Price            : Decimal(12, 2);
        Height           : Decimal(15, 3) @Measures.Unit:Unitofmeasure ;
        Width            : Decimal(13, 3) @Measures.Unit:Unitofmeasure;
        Depth            : Decimal(12, 2) @Measures.Unit:Unitofmeasure;
        Quantity         : Decimal(16, 2);
        Unitofmeasure    : ZDE_MEINS @Common.IsUnit;
        Order            : Association to zorden_fs;
}
