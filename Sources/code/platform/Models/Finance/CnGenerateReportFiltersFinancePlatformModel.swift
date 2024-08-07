

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: CnGenerateReportFilters
        Used By: Finance
    */

    class CnGenerateReportFilters: Codable {
        
        
        public var staffId: [String]?
        
        public var channelOfIssuance: [String]?
        
        public var utilisation: [String]?
        
        public var orderingChannel: [String]?
        
        public var storeId: [Int]?
        
        public var typeOfTransaction: [String]?
        
        public var issuanceChannel: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case staffId = "staff_id"
            
            case channelOfIssuance = "channel_of_issuance"
            
            case utilisation = "utilisation"
            
            case orderingChannel = "ordering_channel"
            
            case storeId = "store_id"
            
            case typeOfTransaction = "type_of_transaction"
            
            case issuanceChannel = "issuance_channel"
            
        }

        public init(channelOfIssuance: [String]? = nil, issuanceChannel: [String]? = nil, orderingChannel: [String]? = nil, staffId: [String]? = nil, storeId: [Int]? = nil, typeOfTransaction: [String]? = nil, utilisation: [String]? = nil) {
            
            self.staffId = staffId
            
            self.channelOfIssuance = channelOfIssuance
            
            self.utilisation = utilisation
            
            self.orderingChannel = orderingChannel
            
            self.storeId = storeId
            
            self.typeOfTransaction = typeOfTransaction
            
            self.issuanceChannel = issuanceChannel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    staffId = try container.decode([String].self, forKey: .staffId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelOfIssuance = try container.decode([String].self, forKey: .channelOfIssuance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    utilisation = try container.decode([String].self, forKey: .utilisation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannel = try container.decode([String].self, forKey: .orderingChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode([Int].self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    typeOfTransaction = try container.decode([String].self, forKey: .typeOfTransaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    issuanceChannel = try container.decode([String].self, forKey: .issuanceChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(staffId, forKey: .staffId)
            
            
            
            
            try? container.encodeIfPresent(channelOfIssuance, forKey: .channelOfIssuance)
            
            
            
            
            try? container.encodeIfPresent(utilisation, forKey: .utilisation)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(typeOfTransaction, forKey: .typeOfTransaction)
            
            
            
            
            try? container.encodeIfPresent(issuanceChannel, forKey: .issuanceChannel)
            
            
        }
        
    }
}




