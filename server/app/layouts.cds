annotate TravelService.Booking with @UI : {
 
  LineItem                : [
    {
        $Type : 'UI.DataField',
        Value : BookingID,
        ![@UI.Importance] : #High
    },
  //  Exercise 5: add chart table column

    { Value : to_Customer_CustomerID, ![@UI.Importance] : #High },
    { Value : to_Carrier_AirlineID, ![@UI.Importance] : #High   },
    { Value : ConnectionID,         ![@UI.Importance] : #High   },
    { Value : FlightDate, ![@UI.Importance] : #High             },
    { Value : FlightPrice, ![@UI.Importance] : #High            },
    { Value : BookingStatus_code     }
  ]
};

annotate TravelService.BookedFlights with @(
    UI : {
        SelectionFields : [
          to_Agency_AgencyID,
          TravelStatus_code
        ]
    }
);

annotate TravelService.Airline with @(
    UI : {
      FieldGroup #Main : {
          $Type : 'UI.FieldGroupType',
          Data : [
            {
                $Type : 'UI.DataField',
                Value : AirlineID
            },
            {
                $Type : 'UI.DataField',
                Value : CurrencyCode_code
            },
          ]
      },
      FieldGroup #Logo : {
          $Type : 'UI.FieldGroupType',
          Data : [
            {
                $Type : 'UI.DataFieldWithUrl',
                Label: '',
                Value : AirlinePicURL,
            }
          ]
      },
      HeaderInfo : {
        TypeName       : 'Airline',
        TypeNamePlural : 'Airlines',
        Title          : { Value : Name }
      },
      HeaderFacets : [
          {
              $Type : 'UI.ReferenceFacet',
              Target : '@UI.FieldGroup#Logo'
          },
          {
              $Type : 'UI.ReferenceFacet',
              Target : '@UI.FieldGroup#Main'
          }
      ],
      Facets : [
        {  
          $Type  : 'UI.ReferenceFacet',
          ID     : 'TravelData',
          Target : 'to_Bookings/@UI.LineItem',
          Label  : '{i18n>TravelData}'
        }
      ]
    }
);