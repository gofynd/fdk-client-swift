

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AggregatorsConfigDetail
        Used By: Payment
    */
    class AggregatorsConfigDetail: Codable {
        
        public var success: Bool
        
        public var razorpay: AggregatorConfigDetail?
        
        public var juspay: AggregatorConfigDetail?
        
        public var simpl: AggregatorConfigDetail?
        
        public var payumoney: AggregatorConfigDetail?
        
        public var rupifi: AggregatorConfigDetail?
        
        public var mswipe: AggregatorConfigDetail?
        
        public var stripe: AggregatorConfigDetail?
        
        public var ccavenue: AggregatorConfigDetail?
        
        public var ajiodhan: AggregatorConfigDetail?
        
        public var potlee: AggregatorConfigDetail?
        
        public var qrRefundJiopay: AggregatorConfigDetail?
        
        public var offerxone: AggregatorConfigDetail?
        
        public var env: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case razorpay = "razorpay"
            
            case juspay = "juspay"
            
            case simpl = "simpl"
            
            case payumoney = "payumoney"
            
            case rupifi = "rupifi"
            
            case mswipe = "mswipe"
            
            case stripe = "stripe"
            
            case ccavenue = "ccavenue"
            
            case ajiodhan = "ajiodhan"
            
            case potlee = "potlee"
            
            case qrRefundJiopay = "qr_refund_jiopay"
            
            case offerxone = "offerxone"
            
            case env = "env"
            
        }

        public init(ajiodhan: AggregatorConfigDetail? = nil, ccavenue: AggregatorConfigDetail? = nil, env: String, juspay: AggregatorConfigDetail? = nil, mswipe: AggregatorConfigDetail? = nil, offerxone: AggregatorConfigDetail? = nil, payumoney: AggregatorConfigDetail? = nil, potlee: AggregatorConfigDetail? = nil, qrRefundJiopay: AggregatorConfigDetail? = nil, razorpay: AggregatorConfigDetail? = nil, rupifi: AggregatorConfigDetail? = nil, simpl: AggregatorConfigDetail? = nil, stripe: AggregatorConfigDetail? = nil, success: Bool) {
            
            self.success = success
            
            self.razorpay = razorpay
            
            self.juspay = juspay
            
            self.simpl = simpl
            
            self.payumoney = payumoney
            
            self.rupifi = rupifi
            
            self.mswipe = mswipe
            
            self.stripe = stripe
            
            self.ccavenue = ccavenue
            
            self.ajiodhan = ajiodhan
            
            self.potlee = potlee
            
            self.qrRefundJiopay = qrRefundJiopay
            
            self.offerxone = offerxone
            
            self.env = env
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ajiodhan = try container.decode(AggregatorConfigDetail.self, forKey: .ajiodhan)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                potlee = try container.decode(AggregatorConfigDetail.self, forKey: .potlee)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                qrRefundJiopay = try container.decode(AggregatorConfigDetail.self, forKey: .qrRefundJiopay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                offerxone = try container.decode(AggregatorConfigDetail.self, forKey: .offerxone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            env = try container.decode(String.self, forKey: .env)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            
            
            try? container.encodeIfPresent(payumoney, forKey: .payumoney)
            
            
            
            try? container.encodeIfPresent(rupifi, forKey: .rupifi)
            
            
            
            try? container.encodeIfPresent(mswipe, forKey: .mswipe)
            
            
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            
            
            try? container.encodeIfPresent(ajiodhan, forKey: .ajiodhan)
            
            
            
            try? container.encodeIfPresent(potlee, forKey: .potlee)
            
            
            
            try? container.encodeIfPresent(qrRefundJiopay, forKey: .qrRefundJiopay)
            
            
            
            try? container.encodeIfPresent(offerxone, forKey: .offerxone)
            
            
            
            try? container.encodeIfPresent(env, forKey: .env)
            
            
        }
        
    }
}
