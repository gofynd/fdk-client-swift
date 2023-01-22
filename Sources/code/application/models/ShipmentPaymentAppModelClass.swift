

import Foundation
public extension ApplicationClient {
    /*
        Model: ShipmentPayment
        Used By: Order
    */
    class ShipmentPayment: Codable {
        
        public var status: String?
        
        public var paymentMode: String?
        
        public var logo: String?
        
        public var mop: String?
        
        public var mode: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case paymentMode = "payment_mode"
            
            case logo = "logo"
            
            case mop = "mop"
            
            case mode = "mode"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String? = nil, logo: String? = nil, mode: String? = nil, mop: String? = nil, paymentMode: String? = nil, status: String? = nil) {
            
            self.status = status
            
            self.paymentMode = paymentMode
            
            self.logo = logo
            
            self.mop = mop
            
            self.mode = mode
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logo = try container.decode(String.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mop = try container.decode(String.self, forKey: .mop)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mode = try container.decode(String.self, forKey: .mode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(mop, forKey: .mop)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}
