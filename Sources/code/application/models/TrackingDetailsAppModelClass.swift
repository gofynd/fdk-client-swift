

import Foundation
public extension ApplicationClient {
    /*
        Model: TrackingDetails
        Used By: Order
    */
    class TrackingDetails: Codable {
        
        public var trackingDetails: [NestedTrackingDetails]?
        
        public var isPassed: Bool?
        
        public var isCurrent: Bool?
        
        public var status: String?
        
        public var time: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case trackingDetails = "tracking_details"
            
            case isPassed = "is_passed"
            
            case isCurrent = "is_current"
            
            case status = "status"
            
            case time = "time"
            
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String? = nil, time: String? = nil, trackingDetails: [NestedTrackingDetails]? = nil) {
            
            self.trackingDetails = trackingDetails
            
            self.isPassed = isPassed
            
            self.isCurrent = isCurrent
            
            self.status = status
            
            self.time = time
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                trackingDetails = try container.decode([NestedTrackingDetails].self, forKey: .trackingDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isPassed = try container.decode(Bool.self, forKey: .isPassed)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCurrent = try container.decode(Bool.self, forKey: .isCurrent)
            
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
            
            
            
            do {
                time = try container.decode(String.self, forKey: .time)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)
            
            
            
            
            try? container.encodeIfPresent(isPassed, forKey: .isPassed)
            
            
            
            
            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
        }
        
    }
}
