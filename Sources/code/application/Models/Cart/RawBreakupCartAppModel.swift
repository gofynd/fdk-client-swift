

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: RawBreakup
        Used By: Cart
    */
    class RawBreakup: Codable {
        
        public var promotion: Double?
        
        public var coupon: Double?
        
        public var gstCharges: Double?
        
        public var mrpTotal: Double?
        
        public var fyndCash: Double?
        
        public var vog: Double?
        
        public var giftCard: Double?
        
        public var codCharge: Double?
        
        public var total: Double?
        
        public var discount: Double?
        
        public var deliveryCharge: Double?
        
        public var youSaved: Double?
        
        public var subtotal: Double?
        
        public var subTotal: Double?
        
        public var convenienceFee: Double?
        
        public var totalCharge: Double?
        
        public var mopTotal: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotion = "promotion"
            
            case coupon = "coupon"
            
            case gstCharges = "gst_charges"
            
            case mrpTotal = "mrp_total"
            
            case fyndCash = "fynd_cash"
            
            case vog = "vog"
            
            case giftCard = "gift_card"
            
            case codCharge = "cod_charge"
            
            case total = "total"
            
            case discount = "discount"
            
            case deliveryCharge = "delivery_charge"
            
            case youSaved = "you_saved"
            
            case subtotal = "subtotal"
            
            case subTotal = "sub_total"
            
            case convenienceFee = "convenience_fee"
            
            case totalCharge = "total_charge"
            
            case mopTotal = "mop_total"
            
        }

        public init(codCharge: Double? = nil, convenienceFee: Double? = nil, coupon: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCash: Double? = nil, giftCard: Double? = nil, gstCharges: Double? = nil, mopTotal: Double? = nil, mrpTotal: Double? = nil, promotion: Double? = nil, subtotal: Double? = nil, subTotal: Double? = nil, total: Double? = nil, totalCharge: Double? = nil, vog: Double? = nil, youSaved: Double? = nil) {
            
            self.promotion = promotion
            
            self.coupon = coupon
            
            self.gstCharges = gstCharges
            
            self.mrpTotal = mrpTotal
            
            self.fyndCash = fyndCash
            
            self.vog = vog
            
            self.giftCard = giftCard
            
            self.codCharge = codCharge
            
            self.total = total
            
            self.discount = discount
            
            self.deliveryCharge = deliveryCharge
            
            self.youSaved = youSaved
            
            self.subtotal = subtotal
            
            self.subTotal = subTotal
            
            self.convenienceFee = convenienceFee
            
            self.totalCharge = totalCharge
            
            self.mopTotal = mopTotal
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                promotion = try container.decode(Double.self, forKey: .promotion)
            
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
                subTotal = try container.decode(Double.self, forKey: .subTotal)
            
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
                totalCharge = try container.decode(Double.self, forKey: .totalCharge)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(promotion, forKey: .promotion)
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            
            
            try? container.encodeIfPresent(giftCard, forKey: .giftCard)
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            try? container.encodeIfPresent(subTotal, forKey: .subTotal)
            
            
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            
            
            try? container.encodeIfPresent(totalCharge, forKey: .totalCharge)
            
            
            
            try? container.encodeIfPresent(mopTotal, forKey: .mopTotal)
            
            
        }
        
    }
}
