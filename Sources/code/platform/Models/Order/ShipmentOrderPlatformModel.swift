

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Shipment
        Used By: Order
    */

    class Shipment: Codable {
        
        
        public var lineItems: [LineItem]
        
        public var externalShipmentId: String?
        
        public var processingDates: ProcessingDates?
        
        public var meta: [String: Any]?
        
        public var priority: Int?
        
        public var locationId: Int?
        
        public var orderType: String?
        
        public var parentType: String?
        
        public var storeInvoiceId: String?
        
        public var lockStatus: String?
        
        public var type: String?
        
        public var billingAddressJson: PlatformDeliveryAddress?
        
        public var id: String?
        
        public var fulfilmentPriority: Int?
        
        public var isActive: Bool?
        
        public var previousShipmentId: String?
        
        public var pdfLinks: [String: Any]?
        
        public var deliveryAddressJson: PlatformDeliveryAddress?
        
        public var ewayBillId: String?
        
        public var affiliateShipmentId: String?
        
        public var fyndOrderId: String?
        
        public var tags: [String]?
        
        public var createdAt: String?
        
        public var deliveryAwbNumber: String?
        
        public var handOverContactJson: PlatformDeliveryAddress?
        
        public var creditNoteId: String?
        
        public var parentId: String?
        
        public var affiliateId: String?
        
        public var packagingType: String?
        
        public var vertical: String?
        
        public var quantity: Double?
        
        public var status: ShipmentStatusData?
        
        public var price: Prices?
        
        public var gst: ShipmentGstDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineItems = "line_items"
            
            case externalShipmentId = "external_shipment_id"
            
            case processingDates = "processing_dates"
            
            case meta = "meta"
            
            case priority = "priority"
            
            case locationId = "location_id"
            
            case orderType = "order_type"
            
            case parentType = "parent_type"
            
            case storeInvoiceId = "store_invoice_id"
            
            case lockStatus = "lock_status"
            
            case type = "type"
            
            case billingAddressJson = "billing_address_json"
            
            case id = "id"
            
            case fulfilmentPriority = "fulfilment_priority"
            
            case isActive = "is_active"
            
            case previousShipmentId = "previous_shipment_id"
            
            case pdfLinks = "pdf_links"
            
            case deliveryAddressJson = "delivery_address_json"
            
            case ewayBillId = "eway_bill_id"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case fyndOrderId = "fynd_order_id"
            
            case tags = "tags"
            
            case createdAt = "created_at"
            
            case deliveryAwbNumber = "delivery_awb_number"
            
            case handOverContactJson = "hand_over_contact_json"
            
            case creditNoteId = "credit_note_id"
            
            case parentId = "parent_id"
            
            case affiliateId = "affiliate_id"
            
            case packagingType = "packaging_type"
            
            case vertical = "vertical"
            
            case quantity = "quantity"
            
            case status = "status"
            
            case price = "price"
            
            case gst = "gst"
            
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, billingAddressJson: PlatformDeliveryAddress? = nil, createdAt: String? = nil, creditNoteId: String? = nil, deliveryAddressJson: PlatformDeliveryAddress? = nil, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, externalShipmentId: String? = nil, fulfilmentPriority: Int? = nil, fyndOrderId: String? = nil, gst: ShipmentGstDetails? = nil, handOverContactJson: PlatformDeliveryAddress? = nil, id: String? = nil, isActive: Bool? = nil, lineItems: [LineItem], locationId: Int? = nil, lockStatus: String? = nil, meta: [String: Any]? = nil, orderType: String? = nil, packagingType: String? = nil, parentId: String? = nil, parentType: String? = nil, pdfLinks: [String: Any]? = nil, previousShipmentId: String? = nil, price: Prices? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil, quantity: Double? = nil, status: ShipmentStatusData? = nil, storeInvoiceId: String? = nil, tags: [String]? = nil, type: String? = nil, vertical: String? = nil) {
            
            self.lineItems = lineItems
            
            self.externalShipmentId = externalShipmentId
            
            self.processingDates = processingDates
            
            self.meta = meta
            
            self.priority = priority
            
            self.locationId = locationId
            
            self.orderType = orderType
            
            self.parentType = parentType
            
            self.storeInvoiceId = storeInvoiceId
            
            self.lockStatus = lockStatus
            
            self.type = type
            
            self.billingAddressJson = billingAddressJson
            
            self.id = id
            
            self.fulfilmentPriority = fulfilmentPriority
            
            self.isActive = isActive
            
            self.previousShipmentId = previousShipmentId
            
            self.pdfLinks = pdfLinks
            
            self.deliveryAddressJson = deliveryAddressJson
            
            self.ewayBillId = ewayBillId
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.fyndOrderId = fyndOrderId
            
            self.tags = tags
            
            self.createdAt = createdAt
            
            self.deliveryAwbNumber = deliveryAwbNumber
            
            self.handOverContactJson = handOverContactJson
            
            self.creditNoteId = creditNoteId
            
            self.parentId = parentId
            
            self.affiliateId = affiliateId
            
            self.packagingType = packagingType
            
            self.vertical = vertical
            
            self.quantity = quantity
            
            self.status = status
            
            self.price = price
            
            self.gst = gst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineItems = try container.decode([LineItem].self, forKey: .lineItems)
                
            
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingDates = try container.decode(ProcessingDates.self, forKey: .processingDates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationId = try container.decode(Int.self, forKey: .locationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentType = try container.decode(String.self, forKey: .parentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(String.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddressJson = try container.decode(PlatformDeliveryAddress.self, forKey: .billingAddressJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pdfLinks = try container.decode([String: Any].self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddressJson = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddressJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillId = try container.decode(String.self, forKey: .ewayBillId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    handOverContactJson = try container.decode(PlatformDeliveryAddress.self, forKey: .handOverContactJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentId = try container.decode(String.self, forKey: .parentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vertical = try container.decode(String.self, forKey: .vertical)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Double.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(ShipmentStatusData.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Prices.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gst = try container.decode(ShipmentGstDetails.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(processingDates, forKey: .processingDates)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(locationId, forKey: .locationId)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(parentType, forKey: .parentType)
            
            
            
            
            try? container.encodeIfPresent(storeInvoiceId, forKey: .storeInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(previousShipmentId, forKey: .previousShipmentId)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)
            
            
            
            
            try? container.encodeIfPresent(ewayBillId, forKey: .ewayBillId)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(deliveryAwbNumber, forKey: .deliveryAwbNumber)
            
            
            
            
            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)
            
            
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
            
            
            try? container.encodeIfPresent(vertical, forKey: .vertical)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Shipment
        Used By: Order
    */

    class Shipment: Codable {
        
        
        public var lineItems: [LineItem]
        
        public var externalShipmentId: String?
        
        public var processingDates: ProcessingDates?
        
        public var meta: [String: Any]?
        
        public var priority: Int?
        
        public var locationId: Int?
        
        public var orderType: String?
        
        public var parentType: String?
        
        public var storeInvoiceId: String?
        
        public var lockStatus: String?
        
        public var type: String?
        
        public var billingAddressJson: PlatformDeliveryAddress?
        
        public var id: String?
        
        public var fulfilmentPriority: Int?
        
        public var isActive: Bool?
        
        public var previousShipmentId: String?
        
        public var pdfLinks: [String: Any]?
        
        public var deliveryAddressJson: PlatformDeliveryAddress?
        
        public var ewayBillId: String?
        
        public var affiliateShipmentId: String?
        
        public var fyndOrderId: String?
        
        public var tags: [String]?
        
        public var createdAt: String?
        
        public var deliveryAwbNumber: String?
        
        public var handOverContactJson: PlatformDeliveryAddress?
        
        public var creditNoteId: String?
        
        public var parentId: String?
        
        public var affiliateId: String?
        
        public var packagingType: String?
        
        public var vertical: String?
        
        public var quantity: Double?
        
        public var status: ShipmentStatusData?
        
        public var price: Prices?
        
        public var gst: ShipmentGstDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineItems = "line_items"
            
            case externalShipmentId = "external_shipment_id"
            
            case processingDates = "processing_dates"
            
            case meta = "meta"
            
            case priority = "priority"
            
            case locationId = "location_id"
            
            case orderType = "order_type"
            
            case parentType = "parent_type"
            
            case storeInvoiceId = "store_invoice_id"
            
            case lockStatus = "lock_status"
            
            case type = "type"
            
            case billingAddressJson = "billing_address_json"
            
            case id = "id"
            
            case fulfilmentPriority = "fulfilment_priority"
            
            case isActive = "is_active"
            
            case previousShipmentId = "previous_shipment_id"
            
            case pdfLinks = "pdf_links"
            
            case deliveryAddressJson = "delivery_address_json"
            
            case ewayBillId = "eway_bill_id"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case fyndOrderId = "fynd_order_id"
            
            case tags = "tags"
            
            case createdAt = "created_at"
            
            case deliveryAwbNumber = "delivery_awb_number"
            
            case handOverContactJson = "hand_over_contact_json"
            
            case creditNoteId = "credit_note_id"
            
            case parentId = "parent_id"
            
            case affiliateId = "affiliate_id"
            
            case packagingType = "packaging_type"
            
            case vertical = "vertical"
            
            case quantity = "quantity"
            
            case status = "status"
            
            case price = "price"
            
            case gst = "gst"
            
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, billingAddressJson: PlatformDeliveryAddress? = nil, createdAt: String? = nil, creditNoteId: String? = nil, deliveryAddressJson: PlatformDeliveryAddress? = nil, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, externalShipmentId: String? = nil, fulfilmentPriority: Int? = nil, fyndOrderId: String? = nil, gst: ShipmentGstDetails? = nil, handOverContactJson: PlatformDeliveryAddress? = nil, id: String? = nil, isActive: Bool? = nil, lineItems: [LineItem], locationId: Int? = nil, lockStatus: String? = nil, meta: [String: Any]? = nil, orderType: String? = nil, packagingType: String? = nil, parentId: String? = nil, parentType: String? = nil, pdfLinks: [String: Any]? = nil, previousShipmentId: String? = nil, price: Prices? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil, quantity: Double? = nil, status: ShipmentStatusData? = nil, storeInvoiceId: String? = nil, tags: [String]? = nil, type: String? = nil, vertical: String? = nil) {
            
            self.lineItems = lineItems
            
            self.externalShipmentId = externalShipmentId
            
            self.processingDates = processingDates
            
            self.meta = meta
            
            self.priority = priority
            
            self.locationId = locationId
            
            self.orderType = orderType
            
            self.parentType = parentType
            
            self.storeInvoiceId = storeInvoiceId
            
            self.lockStatus = lockStatus
            
            self.type = type
            
            self.billingAddressJson = billingAddressJson
            
            self.id = id
            
            self.fulfilmentPriority = fulfilmentPriority
            
            self.isActive = isActive
            
            self.previousShipmentId = previousShipmentId
            
            self.pdfLinks = pdfLinks
            
            self.deliveryAddressJson = deliveryAddressJson
            
            self.ewayBillId = ewayBillId
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.fyndOrderId = fyndOrderId
            
            self.tags = tags
            
            self.createdAt = createdAt
            
            self.deliveryAwbNumber = deliveryAwbNumber
            
            self.handOverContactJson = handOverContactJson
            
            self.creditNoteId = creditNoteId
            
            self.parentId = parentId
            
            self.affiliateId = affiliateId
            
            self.packagingType = packagingType
            
            self.vertical = vertical
            
            self.quantity = quantity
            
            self.status = status
            
            self.price = price
            
            self.gst = gst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineItems = try container.decode([LineItem].self, forKey: .lineItems)
                
            
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingDates = try container.decode(ProcessingDates.self, forKey: .processingDates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationId = try container.decode(Int.self, forKey: .locationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentType = try container.decode(String.self, forKey: .parentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(String.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddressJson = try container.decode(PlatformDeliveryAddress.self, forKey: .billingAddressJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pdfLinks = try container.decode([String: Any].self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddressJson = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddressJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillId = try container.decode(String.self, forKey: .ewayBillId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    handOverContactJson = try container.decode(PlatformDeliveryAddress.self, forKey: .handOverContactJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentId = try container.decode(String.self, forKey: .parentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vertical = try container.decode(String.self, forKey: .vertical)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Double.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(ShipmentStatusData.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Prices.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gst = try container.decode(ShipmentGstDetails.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(processingDates, forKey: .processingDates)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(locationId, forKey: .locationId)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(parentType, forKey: .parentType)
            
            
            
            
            try? container.encodeIfPresent(storeInvoiceId, forKey: .storeInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(previousShipmentId, forKey: .previousShipmentId)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)
            
            
            
            
            try? container.encodeIfPresent(ewayBillId, forKey: .ewayBillId)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(deliveryAwbNumber, forKey: .deliveryAwbNumber)
            
            
            
            
            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)
            
            
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
            
            
            try? container.encodeIfPresent(vertical, forKey: .vertical)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
        }
        
    }
}


