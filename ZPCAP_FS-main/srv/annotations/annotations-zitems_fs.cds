using {ServiceCatalog as Srv} from '../service';

annotate Srv.Items with {
    Name @title: '{i18n>name}';
};

annotate Srv.Items with @(
    UI.HeaderInfo       : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>Item}',
        TypeNamePlural: '{i18n>Items}',
        Title         : {Value: Name},
        Description   : {Value: Description}
    },
    UI.FieldGroup #Items: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Name,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>description}',
                Value: Description,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>releasedate}',
                Value: Releasedate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>discontinueddate}',
                Value: Discontinueddate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>price}',
                Value: Price,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>height}',
                Value: Height,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>width}',
                Value: Width,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>depth}',
                Value: Depth,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>quantity}',
                Value: Quantity,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>unitofmeasure}',
                Value: Unitofmeasure,
            },
        ]
    },
    UI.LineItem         : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>name}',
            Value: Name,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>description}',
            Value: Description,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>releasedate}',
            Value: Releasedate,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>discontinueddate}',
            Value: Discontinueddate,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>price}',
            Value: Price,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>height}',
            Value: Height,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>width}',
            Value: Width,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>depth}',
            Value: Depth,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>quantity}',
            Value: Quantity,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>quantity}',
            Value: Quantity,
        },
    ],
    UI.Facets           : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#Items',
        Label : '{i18n>Items}'
    }]
);
