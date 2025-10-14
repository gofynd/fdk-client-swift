

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LineItemMonetaryValuesSchema
        Used By: Order
    */

    class LineItemMonetaryValuesSchema: Codable {
        
        
        public var amountPaid: Double
        
        public var priceEffective: Double
        
        public var discount: Double?
        
        public var priceMarked: Double
        
        public var couponDiscount: Double?
        
        public var codCharges: Double?
        
        public var promoDiscount: Double?
        
        public var giftPrice: Double?
        
        public var deliveryCharges: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case amountPaid = "amount_paid"
            
            case priceEffective = "price_effective"
            
            case discount = "discount"
            
            case priceMarked = "price_marked"
            
            case couponDiscount = "coupon_discount"
            
            case codCharges = "cod_charges"
            
            case promoDiscount = "promo_discount"
            
            case giftPrice = "gift_price"
            
            case deliveryCharges = "delivery_charges"
            
        }

        public init(amountPaid: Double, codCharges: Double? = nil, couponDiscount: Double? = nil, deliveryCharges: Double? = nil, discount: Double? = nil, giftPrice: Double? = nil, priceEffective: Double, priceMarked: Double, promoDiscount: Double? = nil) {
            
            self.amountPaid = amountPaid
            
            self.priceEffective = priceEffective
            
            self.discount = discount
            
            self.priceMarked = priceMarked
            
            self.couponDiscount = couponDiscount
            
            self.codCharges = codCharges
            
            self.promoDiscount = promoDiscount
            
            self.giftPrice = giftPrice
            
            self.deliveryCharges = deliveryCharges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                do {
                    couponDiscount = try container.decode(Double.self, forKey: .couponDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoDiscount = try container.decode(Double.self, forKey: .promoDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftPrice = try container.decode(Double.self, forKey: .giftPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(couponDiscount, forKey: .couponDiscount)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(promoDiscount, forKey: .promoDiscount)
            
            
            
            
            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LineItemMonetaryValuesSchema
        Used By: Order
    */

    class LineItemMonetaryValuesSchema: Codable {
        
        
        public var amountPaid: Double
        
        public var priceEffective: Double
        
        public var discount: Double?
        
        public var priceMarked: Double
        
        public var couponDiscount: Double?
        
        public var codCharges: Double?
        
        public var promoDiscount: Double?
        
        public var giftPrice: Double?
        
        public var deliveryCharges: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case amountPaid = "amount_paid"
            
            case priceEffective = "price_effective"
            
            case discount = "discount"
            
            case priceMarked = "price_marked"
            
            case couponDiscount = "coupon_discount"
            
            case codCharges = "cod_charges"
            
            case promoDiscount = "promo_discount"
            
            case giftPrice = "gift_price"
            
            case deliveryCharges = "delivery_charges"
            
        }

        public init(amountPaid: Double, codCharges: Double? = nil, couponDiscount: Double? = nil, deliveryCharges: Double? = nil, discount: Double? = nil, giftPrice: Double? = nil, priceEffective: Double, priceMarked: Double, promoDiscount: Double? = nil) {
            
            self.amountPaid = amountPaid
            
            self.priceEffective = priceEffective
            
            self.discount = discount
            
            self.priceMarked = priceMarked
            
            self.couponDiscount = couponDiscount
            
            self.codCharges = codCharges
            
            self.promoDiscount = promoDiscount
            
            self.giftPrice = giftPrice
            
            self.deliveryCharges = deliveryCharges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                do {
                    couponDiscount = try container.decode(Double.self, forKey: .couponDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoDiscount = try container.decode(Double.self, forKey: .promoDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftPrice = try container.decode(Double.self, forKey: .giftPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(couponDiscount, forKey: .couponDiscount)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(promoDiscount, forKey: .promoDiscount)
            
            
            
            
            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
        }
        
    }
}


