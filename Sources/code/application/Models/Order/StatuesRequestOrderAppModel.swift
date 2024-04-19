

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: StatuesRequest
        Used By: Order
    */
    class StatuesRequest: Codable {
        
        public var shipments: [ShipmentsRequest]?
        
        public var excludeBagsNextState: String?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case excludeBagsNextState = "exclude_bags_next_state"
            
            case status = "status"
            
        }

        public init(excludeBagsNextState: String? = nil, shipments: [ShipmentsRequest]? = nil, status: String? = nil) {
            
            self.shipments = shipments
            
            self.excludeBagsNextState = excludeBagsNextState
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                shipments = try container.decode([ShipmentsRequest].self, forKey: .shipments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}
