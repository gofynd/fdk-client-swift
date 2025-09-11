

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: UPIBeneficiary
        Used By: Payment
    */
    class UPIBeneficiary: Codable {
        
        public var isActive: Bool?
        
        public var isVerified: Bool?
        
        public var transferMode: String?
        
        public var displayName: String?
        
        public var vpaAddress: String?
        
        public var customerName: String?
        
        public var id: String?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case isVerified = "is_verified"
            
            case transferMode = "transfer_mode"
            
            case displayName = "display_name"
            
            case vpaAddress = "vpa_address"
            
            case customerName = "customer_name"
            
            case id = "id"
            
            case logo = "logo"
            
        }

        public init(customerName: String? = nil, displayName: String? = nil, id: String? = nil, isActive: Bool? = nil, isVerified: Bool? = nil, logo: String? = nil, transferMode: String? = nil, vpaAddress: String? = nil) {
            
            self.isActive = isActive
            
            self.isVerified = isVerified
            
            self.transferMode = transferMode
            
            self.displayName = displayName
            
            self.vpaAddress = vpaAddress
            
            self.customerName = customerName
            
            self.id = id
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isVerified = try container.decode(Bool.self, forKey: .isVerified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                transferMode = try container.decode(String.self, forKey: .transferMode)
            
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
            
            
            
            do {
                vpaAddress = try container.decode(String.self, forKey: .vpaAddress)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customerName = try container.decode(String.self, forKey: .customerName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(isVerified, forKey: .isVerified)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(vpaAddress, forKey: .vpaAddress)
            
            
            
            try? container.encodeIfPresent(customerName, forKey: .customerName)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}
