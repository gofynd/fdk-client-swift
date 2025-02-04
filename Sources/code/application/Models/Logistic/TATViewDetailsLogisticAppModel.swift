

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATViewDetails
        Used By: Logistic
    */
    class TATViewDetails: Codable {
        
        public var toPincode: String?
        
        public var source: String?
        
        public var action: String?
        
        public var identifier: String?
        
        public var locationDetails: [TATLocationDetailsDetails]?
        
        public var journey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case toPincode = "to_pincode"
            
            case source = "source"
            
            case action = "action"
            
            case identifier = "identifier"
            
            case locationDetails = "location_details"
            
            case journey = "journey"
            
        }

        public init(action: String? = nil, identifier: String? = nil, journey: String? = nil, locationDetails: [TATLocationDetailsDetails]? = nil, source: String? = nil, toPincode: String? = nil) {
            
            self.toPincode = toPincode
            
            self.source = source
            
            self.action = action
            
            self.identifier = identifier
            
            self.locationDetails = locationDetails
            
            self.journey = journey
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                toPincode = try container.decode(String.self, forKey: .toPincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                source = try container.decode(String.self, forKey: .source)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                action = try container.decode(String.self, forKey: .action)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                identifier = try container.decode(String.self, forKey: .identifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                locationDetails = try container.decode([TATLocationDetailsDetails].self, forKey: .locationDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                journey = try container.decode(String.self, forKey: .journey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
        }
        
    }
}
