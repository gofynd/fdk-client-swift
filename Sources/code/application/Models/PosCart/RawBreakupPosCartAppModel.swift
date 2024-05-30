

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: RawBreakup
        Used By: PosCart
    */
    class RawBreakup: Codable {
        
        public var discount: Double?
        
        public var youSaved: Double?
        
        public var mrpTotal: Double?
        
        public var gstCharges: Double?
        
        public var total: Double?
        
        public var vog: Double?
        
        public var coupon: Double?
        
        public var subtotal: Double?
        
        public var deliveryCharge: Double?
        
        public var codCharge: Double?
        
        public var fyndCash: Double?
        
        public var giftCard: Double?
        
        public var convenienceFee: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case youSaved = "you_saved"
            
            case mrpTotal = "mrp_total"
            
            case gstCharges = "gst_charges"
            
            case total = "total"
            
            case vog = "vog"
            
            case coupon = "coupon"
            
            case subtotal = "subtotal"
            
            case deliveryCharge = "delivery_charge"
            
            case codCharge = "cod_charge"
            
            case fyndCash = "fynd_cash"
            
            case giftCard = "gift_card"
            
            case convenienceFee = "convenience_fee"
            
        }

        public init(codCharge: Double? = nil, convenienceFee: Double? = nil, coupon: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCash: Double? = nil, giftCard: Double? = nil, gstCharges: Double? = nil, mrpTotal: Double? = nil, subtotal: Double? = nil, total: Double? = nil, vog: Double? = nil, youSaved: Double? = nil) {
            
            self.discount = discount
            
            self.youSaved = youSaved
            
            self.mrpTotal = mrpTotal
            
            self.gstCharges = gstCharges
            
            self.total = total
            
            self.vog = vog
            
            self.coupon = coupon
            
            self.subtotal = subtotal
            
            self.deliveryCharge = deliveryCharge
            
            self.codCharge = codCharge
            
            self.fyndCash = fyndCash
            
            self.giftCard = giftCard
            
            self.convenienceFee = convenienceFee
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                discount = try container.decode(Double.self, forKey: .discount)
            
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
                mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)
            
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
                total = try container.decode(Double.self, forKey: .total)
            
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
                coupon = try container.decode(Double.self, forKey: .coupon)
            
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
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
            
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
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)
            
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
                convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            try? container.encodeIfPresent(giftCard, forKey: .giftCard)
            
            
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            
        }
        
    }
}
