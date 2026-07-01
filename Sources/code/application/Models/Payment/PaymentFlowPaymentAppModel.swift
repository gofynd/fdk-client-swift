

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentFlow
        Used By: Payment
    */
    class PaymentFlow: Codable {
        
        public var bqrRazorpay: AggregatorRoute?
        
        public var fynd: AggregatorRoute?
        
        public var razorpay: AggregatorRoute?
        
        public var juspay: AggregatorRoute?
        
        public var simpl: AggregatorRoute?
        
        public var ccavenue: AggregatorRoute?
        
        public var payubiz: AggregatorRoute?
        
        public var upiRazorpay: AggregatorRoute?
        

        public enum CodingKeys: String, CodingKey {
            
            case bqrRazorpay = "bqr_razorpay"
            
            case fynd = "fynd"
            
            case razorpay = "razorpay"
            
            case juspay = "juspay"
            
            case simpl = "simpl"
            
            case ccavenue = "ccavenue"
            
            case payubiz = "payubiz"
            
            case upiRazorpay = "upi_razorpay"
            
        }

        public init(bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            
            self.bqrRazorpay = bqrRazorpay
            
            self.fynd = fynd
            
            self.razorpay = razorpay
            
            self.juspay = juspay
            
            self.simpl = simpl
            
            self.ccavenue = ccavenue
            
            self.payubiz = payubiz
            
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
                simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)
            
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
            
            
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            
            
            try? container.encodeIfPresent(payubiz, forKey: .payubiz)
            
            
            
            try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
            
            
        }
        
    }
}
