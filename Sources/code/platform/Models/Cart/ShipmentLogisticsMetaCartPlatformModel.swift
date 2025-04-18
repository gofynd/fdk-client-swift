

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ShipmentLogisticsMeta
        Used By: Cart
    */

    class ShipmentLogisticsMeta: Codable {
        
        
        public var accountOptions: [ShipmentLogisticsMetaAccount]?
        
        public var accountInfo: [String: Any]?
        
        public var dpSortKey: String?
        
        public var assignDpFromSb: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountOptions = "account_options"
            
            case accountInfo = "account_info"
            
            case dpSortKey = "dp_sort_key"
            
            case assignDpFromSb = "assign_dp_from_sb"
            
        }

        public init(accountInfo: [String: Any]? = nil, accountOptions: [ShipmentLogisticsMetaAccount]? = nil, assignDpFromSb: String? = nil, dpSortKey: String? = nil) {
            
            self.accountOptions = accountOptions
            
            self.accountInfo = accountInfo
            
            self.dpSortKey = dpSortKey
            
            self.assignDpFromSb = assignDpFromSb
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    accountOptions = try container.decode([ShipmentLogisticsMetaAccount].self, forKey: .accountOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountInfo = try container.decode([String: Any].self, forKey: .accountInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpSortKey = try container.decode(String.self, forKey: .dpSortKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignDpFromSb = try container.decode(String.self, forKey: .assignDpFromSb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountOptions, forKey: .accountOptions)
            
            
            
            
            try? container.encodeIfPresent(accountInfo, forKey: .accountInfo)
            
            
            
            
            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)
            
            
            
            
            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)
            
            
        }
        
    }
}


