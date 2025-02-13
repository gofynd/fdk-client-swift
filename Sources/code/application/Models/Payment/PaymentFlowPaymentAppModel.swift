

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentFlow
        Used By: Payment
    */
    class PaymentFlow: Codable {
        
        public var bqrRazorpay: AggregatorRoute?
        
        public var fynd: AggregatorRoute?
        
        public var epaylater: AggregatorRoute?
        
        public var razorpay: AggregatorRoute?
        
        public var juspay: AggregatorRoute?
        
        public var ajiodhan: AggregatorRoute?
        
        public var simpl: AggregatorRoute?
        
        public var rupifi: AggregatorRoute?
        
        public var mswipe: AggregatorRoute?
        
        public var stripe: AggregatorRoute?
        
        public var ccavenue: AggregatorRoute?
        
        public var payubiz: AggregatorRoute?
        
        public var jiopay: AggregatorRoute?
        
        public var upiRazorpay: AggregatorRoute?
        

        public enum CodingKeys: String, CodingKey {
            
            case bqrRazorpay = "bqr_razorpay"
            
            case fynd = "fynd"
            
            case epaylater = "epaylater"
            
            case razorpay = "razorpay"
            
            case juspay = "juspay"
            
            case ajiodhan = "ajiodhan"
            
            case simpl = "simpl"
            
            case rupifi = "rupifi"
            
            case mswipe = "mswipe"
            
            case stripe = "stripe"
            
            case ccavenue = "ccavenue"
            
            case payubiz = "payubiz"
            
            case jiopay = "jiopay"
            
            case upiRazorpay = "upi_razorpay"
            
        }

        public init(ajiodhan: AggregatorRoute? = nil, bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            
            self.bqrRazorpay = bqrRazorpay
            
            self.fynd = fynd
            
            self.epaylater = epaylater
            
            self.razorpay = razorpay
            
            self.juspay = juspay
            
            self.ajiodhan = ajiodhan
            
            self.simpl = simpl
            
            self.rupifi = rupifi
            
            self.mswipe = mswipe
            
            self.stripe = stripe
            
            self.ccavenue = ccavenue
            
            self.payubiz = payubiz
            
            self.jiopay = jiopay
            
            self.upiRazorpay = upiRazorpay
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ajiodhan = try container.decode(AggregatorRoute.self, forKey: .ajiodhan)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(bqrRazorpay, forKey: .bqrRazorpay)
            
            
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            
            
            try? container.encodeIfPresent(epaylater, forKey: .epaylater)
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
            
            try? container.encodeIfPresent(ajiodhan, forKey: .ajiodhan)
            
            
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            
            
            try? container.encodeIfPresent(rupifi, forKey: .rupifi)
            
            
            
            try? container.encodeIfPresent(mswipe, forKey: .mswipe)
            
            
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            
            
            try? container.encodeIfPresent(payubiz, forKey: .payubiz)
            
            
            
            try? container.encodeIfPresent(jiopay, forKey: .jiopay)
            
            
            
            try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
            
            
        }
        
    }
}
