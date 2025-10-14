

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LineItemSchema
        Used By: Order
    */

    class LineItemSchema: Codable {
        
        
        public var sellerIdentifier: String?
        
        public var paymentMethods: [LineItemPaymentMethodSchema]
        
        public var monetaryValues: LineItemMonetaryValuesSchema
        
        public var giftDetails: GiftDetailsSchema?
        
        public var specialInstructions: String?
        
        public var dimension: DimensionSchema?
        
        public var quantity: Double?
        
        public var externalLineId: String?
        
        public var bundleDetails: BundleDetailsSchema?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerIdentifier = "seller_identifier"
            
            case paymentMethods = "payment_methods"
            
            case monetaryValues = "monetary_values"
            
            case giftDetails = "gift_details"
            
            case specialInstructions = "special_instructions"
            
            case dimension = "dimension"
            
            case quantity = "quantity"
            
            case externalLineId = "external_line_id"
            
            case bundleDetails = "bundle_details"
            
            case meta = "meta"
            
        }

        public init(bundleDetails: BundleDetailsSchema? = nil, dimension: DimensionSchema? = nil, externalLineId: String? = nil, giftDetails: GiftDetailsSchema? = nil, meta: [String: Any]? = nil, monetaryValues: LineItemMonetaryValuesSchema, paymentMethods: [LineItemPaymentMethodSchema], quantity: Double? = nil, sellerIdentifier: String? = nil, specialInstructions: String? = nil) {
            
            self.sellerIdentifier = sellerIdentifier
            
            self.paymentMethods = paymentMethods
            
            self.monetaryValues = monetaryValues
            
            self.giftDetails = giftDetails
            
            self.specialInstructions = specialInstructions
            
            self.dimension = dimension
            
            self.quantity = quantity
            
            self.externalLineId = externalLineId
            
            self.bundleDetails = bundleDetails
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentMethods = try container.decode([LineItemPaymentMethodSchema].self, forKey: .paymentMethods)
                
            
            
            
                monetaryValues = try container.decode(LineItemMonetaryValuesSchema.self, forKey: .monetaryValues)
                
            
            
            
                do {
                    giftDetails = try container.decode(GiftDetailsSchema.self, forKey: .giftDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    specialInstructions = try container.decode(String.self, forKey: .specialInstructions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimension = try container.decode(DimensionSchema.self, forKey: .dimension)
                
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
                    externalLineId = try container.decode(String.self, forKey: .externalLineId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bundleDetails = try container.decode(BundleDetailsSchema.self, forKey: .bundleDetails)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(monetaryValues, forKey: .monetaryValues)
            
            
            
            
            try? container.encodeIfPresent(giftDetails, forKey: .giftDetails)
            
            
            
            
            try? container.encodeIfPresent(specialInstructions, forKey: .specialInstructions)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)
            
            
            
            
            try? container.encodeIfPresent(bundleDetails, forKey: .bundleDetails)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LineItemSchema
        Used By: Order
    */

    class LineItemSchema: Codable {
        
        
        public var sellerIdentifier: String?
        
        public var paymentMethods: [LineItemPaymentMethodSchema]
        
        public var monetaryValues: LineItemMonetaryValuesSchema
        
        public var giftDetails: GiftDetailsSchema?
        
        public var specialInstructions: String?
        
        public var dimension: DimensionSchema?
        
        public var quantity: Double?
        
        public var externalLineId: String?
        
        public var bundleDetails: BundleDetailsSchema?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerIdentifier = "seller_identifier"
            
            case paymentMethods = "payment_methods"
            
            case monetaryValues = "monetary_values"
            
            case giftDetails = "gift_details"
            
            case specialInstructions = "special_instructions"
            
            case dimension = "dimension"
            
            case quantity = "quantity"
            
            case externalLineId = "external_line_id"
            
            case bundleDetails = "bundle_details"
            
            case meta = "meta"
            
        }

        public init(bundleDetails: BundleDetailsSchema? = nil, dimension: DimensionSchema? = nil, externalLineId: String? = nil, giftDetails: GiftDetailsSchema? = nil, meta: [String: Any]? = nil, monetaryValues: LineItemMonetaryValuesSchema, paymentMethods: [LineItemPaymentMethodSchema], quantity: Double? = nil, sellerIdentifier: String? = nil, specialInstructions: String? = nil) {
            
            self.sellerIdentifier = sellerIdentifier
            
            self.paymentMethods = paymentMethods
            
            self.monetaryValues = monetaryValues
            
            self.giftDetails = giftDetails
            
            self.specialInstructions = specialInstructions
            
            self.dimension = dimension
            
            self.quantity = quantity
            
            self.externalLineId = externalLineId
            
            self.bundleDetails = bundleDetails
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentMethods = try container.decode([LineItemPaymentMethodSchema].self, forKey: .paymentMethods)
                
            
            
            
                monetaryValues = try container.decode(LineItemMonetaryValuesSchema.self, forKey: .monetaryValues)
                
            
            
            
                do {
                    giftDetails = try container.decode(GiftDetailsSchema.self, forKey: .giftDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    specialInstructions = try container.decode(String.self, forKey: .specialInstructions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimension = try container.decode(DimensionSchema.self, forKey: .dimension)
                
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
                    externalLineId = try container.decode(String.self, forKey: .externalLineId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bundleDetails = try container.decode(BundleDetailsSchema.self, forKey: .bundleDetails)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(monetaryValues, forKey: .monetaryValues)
            
            
            
            
            try? container.encodeIfPresent(giftDetails, forKey: .giftDetails)
            
            
            
            
            try? container.encodeIfPresent(specialInstructions, forKey: .specialInstructions)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)
            
            
            
            
            try? container.encodeIfPresent(bundleDetails, forKey: .bundleDetails)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


