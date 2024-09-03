using {ServiceCatalog as Srv} from '../service';
using from './annotations-zitems_fs';

//CRUD Activation
annotate Srv.Order @odata.draft.enabled;

annotate Srv.Order with {
    ID           @title: 'ID';
    Email        @mandatory;
    Firstname    @title: '{i18n>firstname}';
    Lastname     @title: '{i18n>lastname}';
    Country      @title: '{i18n>country}';
    Createon     @title: '{i18n>createon}'  @readonly;
    Deliverydate @title: '{i18n>deliverydate}';
    Orderstatus  @title: '{i18n>deliverydate}' @assert.range: [1,3];
    Imageurl     @title: '{i18n>image}' ;
};

annotate Srv.Order with @(
    UI.HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>Order}',
        TypeNamePlural: '{i18n>Orders}',
        Title         : {Value: ID},
        Description   : {Value: Email}
    },
    UI.FieldGroup #Image         : {
        $Type: 'UI.FieldGroupType',
        Data : [{
            Label: 'Image',
            Value: Imageurl,
        }, ],
    },
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>image}',
                Value: Imageurl,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>id}',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'email',
                Value: Email,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>firstname}',
                Value: Firstname,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>lastname}',
                Value: Lastname,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>country}',
                Value: Country,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>createon}',
                Value: Createon,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>deliverydate}',
                Value: Deliverydate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>orderstatus}',
                Value: Orderstatus,
            },
        ],
    },
    UI.SelectionFields           : [
        Country,
        Firstname,
        Createon
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>image}',
            Value: Imageurl,
        },
        {
            $Type: 'UI.DataField',
            Label: 'email',
            Value: Email,
        },
        {
            $Type: 'UI.DataField',
            //Label: 'firstname',
            Label: '{i18n>firstname}',
            Value: Firstname,
        },
        {
            $Type: 'UI.DataField',
            //Label: 'lastname',
            Label: '{i18n>lastname}',
            Value: Lastname,
        },
        {
            $Type: 'UI.DataField',
            //Label: 'country',
            Label: '{i18n>country}',
            Value: Country,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>createon}',
            Value: Createon,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>deliverydate}',
            Value: Deliverydate,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>orderstatus}',
            Value: Orderstatus,
        },
    ],
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : '{i18n>GeneratedFacet1}', //General Information}',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.CollectionFacet',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Target: 'Items/@UI.LineItem',
            }]
        }
    ]
);
