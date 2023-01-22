

import Foundation
public extension PlatformClient {
    /*
        Model: CreateOrderAPI
        Used By: Order
    */

    class CreateOrderAPI: Codable {
        
        
        public var charges: [Charge]
        
        public var shippingInfo: ShippingInfo
        
        public var billingInfo: BillingInfo
        
        public var shipments: [Shipment]
        
        public var externalCreationDate: String?
        
        public var currencyInfo: [String: Any]?
        
        public var externalOrderId: String?
        
        public var paymentInfo: PaymentInfo
        
        public var meta: [String: Any]?
        
        public var taxInfo: TaxInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case charges = "charges"
            
            case shippingInfo = "shipping_info"
            
            case billingInfo = "billing_info"
            
            case shipments = "shipments"
            
            case externalCreationDate = "external_creation_date"
            
            case currencyInfo = "currency_info"
            
            case externalOrderId = "external_order_id"
            
            case paymentInfo = "payment_info"
            
            case meta = "meta"
            
            case taxInfo = "tax_info"
            
        }

        public init(billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            
            self.charges = charges
            
            self.shippingInfo = shippingInfo
            
            self.billingInfo = billingInfo
            
            self.shipments = shipments
            
            self.externalCreationDate = externalCreationDate
            
            self.currencyInfo = currencyInfo
            
            self.externalOrderId = externalOrderId
            
            self.paymentInfo = paymentInfo
            
            self.meta = meta
            
            self.taxInfo = taxInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                charges = try container.decode([Charge].self, forKey: .charges)
                
            
            
            
                shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)
                
            
            
            
                billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)
                
            
            
            
                shipments = try container.decode([Shipment].self, forKey: .shipments)
                
            
            
            
                do {
                    externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)
            
            
            
            
            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)
            
            
        }
        
    }
}
