

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: RawBreakup
        Used By: Cart
    */

    class RawBreakup: Codable {
        
        
        public var coupon: Double?
        
        public var gstCharges: Double?
        
        public var mrpTotal: Double?
        
        public var engageAmount: Double?
        
        public var engageMopAmount: Double?
        
        public var fyndCash: Double?
        
        public var vog: Double?
        
        public var giftCard: Double?
        
        public var codCharge: Double?
        
        public var total: Double?
        
        public var discount: Double?
        
        public var deliveryCharge: Double?
        
        public var youSaved: Double?
        
        public var subtotal: Double?
        
        public var convenienceFee: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case coupon = "coupon"
            
            case gstCharges = "gst_charges"
            
            case mrpTotal = "mrp_total"
            
            case engageAmount = "engage_amount"
            
            case engageMopAmount = "engage_mop_amount"
            
            case fyndCash = "fynd_cash"
            
            case vog = "vog"
            
            case giftCard = "gift_card"
            
            case codCharge = "cod_charge"
            
            case total = "total"
            
            case discount = "discount"
            
            case deliveryCharge = "delivery_charge"
            
            case youSaved = "you_saved"
            
            case subtotal = "subtotal"
            
            case convenienceFee = "convenience_fee"
            
        }

        public init(codCharge: Double? = nil, convenienceFee: Double? = nil, coupon: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, engageAmount: Double? = nil, engageMopAmount: Double? = nil, fyndCash: Double? = nil, giftCard: Double? = nil, gstCharges: Double? = nil, mrpTotal: Double? = nil, subtotal: Double? = nil, total: Double? = nil, vog: Double? = nil, youSaved: Double? = nil) {
            
            self.coupon = coupon
            
            self.gstCharges = gstCharges
            
            self.mrpTotal = mrpTotal
            
            self.engageAmount = engageAmount
            
            self.engageMopAmount = engageMopAmount
            
            self.fyndCash = fyndCash
            
            self.vog = vog
            
            self.giftCard = giftCard
            
            self.codCharge = codCharge
            
            self.total = total
            
            self.discount = discount
            
            self.deliveryCharge = deliveryCharge
            
            self.youSaved = youSaved
            
            self.subtotal = subtotal
            
            self.convenienceFee = convenienceFee
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCharges = try container.decode(Double.self, forKey: .gstCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    engageAmount = try container.decode(Double.self, forKey: .engageAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    engageMopAmount = try container.decode(Double.self, forKey: .engageMopAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCash = try container.decode(Double.self, forKey: .fyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vog = try container.decode(Double.self, forKey: .vog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftCard = try container.decode(Double.self, forKey: .giftCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharge = try container.decode(Double.self, forKey: .codCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    youSaved = try container.decode(Double.self, forKey: .youSaved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            
            
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            
            
            
            try? container.encodeIfPresent(engageAmount, forKey: .engageAmount)
            
            
            
            
            try? container.encodeIfPresent(engageMopAmount, forKey: .engageMopAmount)
            
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            
            
            
            try? container.encodeIfPresent(giftCard, forKey: .giftCard)
            
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            
        }
        
    }
}


