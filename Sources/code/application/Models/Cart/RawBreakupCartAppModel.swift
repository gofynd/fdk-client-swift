

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: RawBreakup
        Used By: Cart
    */
    class RawBreakup: Codable {
        
        public var vog: Double?
        
        public var subtotal: Double?
        
        public var fyndCash: Double?
        
        public var discount: Double?
        
        public var convenienceFee: Double?
        
        public var deliveryCharge: Double?
        
        public var gstCharges: Double?
        
        public var mrpTotal: Double?
        
        public var mopTotal: Double?
        
        public var totalCharge: Double?
        
        public var coupon: Double?
        
        public var total: Double?
        
        public var giftCard: Double?
        
        public var youSaved: Double?
        
        public var codCharge: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case vog = "vog"
            
            case subtotal = "subtotal"
            
            case fyndCash = "fynd_cash"
            
            case discount = "discount"
            
            case convenienceFee = "convenience_fee"
            
            case deliveryCharge = "delivery_charge"
            
            case gstCharges = "gst_charges"
            
            case mrpTotal = "mrp_total"
            
            case mopTotal = "mop_total"
            
            case totalCharge = "total_charge"
            
            case coupon = "coupon"
            
            case total = "total"
            
            case giftCard = "gift_card"
            
            case youSaved = "you_saved"
            
            case codCharge = "cod_charge"
            
        }

        public init(codCharge: Double? = nil, convenienceFee: Double? = nil, coupon: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCash: Double? = nil, giftCard: Double? = nil, gstCharges: Double? = nil, mopTotal: Double? = nil, mrpTotal: Double? = nil, subtotal: Double? = nil, total: Double? = nil, totalCharge: Double? = nil, vog: Double? = nil, youSaved: Double? = nil) {
            
            self.vog = vog
            
            self.subtotal = subtotal
            
            self.fyndCash = fyndCash
            
            self.discount = discount
            
            self.convenienceFee = convenienceFee
            
            self.deliveryCharge = deliveryCharge
            
            self.gstCharges = gstCharges
            
            self.mrpTotal = mrpTotal
            
            self.mopTotal = mopTotal
            
            self.totalCharge = totalCharge
            
            self.coupon = coupon
            
            self.total = total
            
            self.giftCard = giftCard
            
            self.youSaved = youSaved
            
            self.codCharge = codCharge
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                vog = try container.decode(Double.self, forKey: .vog)
            
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
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)
            
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
                convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)
            
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
                mopTotal = try container.decode(Double.self, forKey: .mopTotal)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                totalCharge = try container.decode(Double.self, forKey: .totalCharge)
            
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
                total = try container.decode(Double.self, forKey: .total)
            
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
                youSaved = try container.decode(Double.self, forKey: .youSaved)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            
            
            try? container.encodeIfPresent(mopTotal, forKey: .mopTotal)
            
            
            
            try? container.encodeIfPresent(totalCharge, forKey: .totalCharge)
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            try? container.encodeIfPresent(giftCard, forKey: .giftCard)
            
            
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
        }
        
    }
}
