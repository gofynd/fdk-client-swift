

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: DeliveryServiceAttributeConfig
        Used By: Serviceability
    */

    class DeliveryServiceAttributeConfig: Codable {
        
        
        public var isPickupCutoffTimeEnabled: Bool?
        
        public var isServiceTatEnabled: Bool?
        
        public var isHolidayEnabled: Bool?
        
        public var isAllDpsConsidered: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isPickupCutoffTimeEnabled = "is_pickup_cutoff_time_enabled"
            
            case isServiceTatEnabled = "is_service_tat_enabled"
            
            case isHolidayEnabled = "is_holiday_enabled"
            
            case isAllDpsConsidered = "is_all_dps_considered"
            
        }

        public init(isAllDpsConsidered: Bool? = nil, isHolidayEnabled: Bool? = nil, isPickupCutoffTimeEnabled: Bool? = nil, isServiceTatEnabled: Bool? = nil) {
            
            self.isPickupCutoffTimeEnabled = isPickupCutoffTimeEnabled
            
            self.isServiceTatEnabled = isServiceTatEnabled
            
            self.isHolidayEnabled = isHolidayEnabled
            
            self.isAllDpsConsidered = isAllDpsConsidered
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isPickupCutoffTimeEnabled = try container.decode(Bool.self, forKey: .isPickupCutoffTimeEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isServiceTatEnabled = try container.decode(Bool.self, forKey: .isServiceTatEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isHolidayEnabled = try container.decode(Bool.self, forKey: .isHolidayEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isAllDpsConsidered = try container.decode(Bool.self, forKey: .isAllDpsConsidered)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isPickupCutoffTimeEnabled, forKey: .isPickupCutoffTimeEnabled)
            
            
            
            
            try? container.encodeIfPresent(isServiceTatEnabled, forKey: .isServiceTatEnabled)
            
            
            
            
            try? container.encodeIfPresent(isHolidayEnabled, forKey: .isHolidayEnabled)
            
            
            
            
            try? container.encodeIfPresent(isAllDpsConsidered, forKey: .isAllDpsConsidered)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: DeliveryServiceAttributeConfig
        Used By: Serviceability
    */

    class DeliveryServiceAttributeConfig: Codable {
        
        
        public var isPickupCutoffTimeEnabled: Bool?
        
        public var isServiceTatEnabled: Bool?
        
        public var isHolidayEnabled: Bool?
        
        public var isAllDpsConsidered: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isPickupCutoffTimeEnabled = "is_pickup_cutoff_time_enabled"
            
            case isServiceTatEnabled = "is_service_tat_enabled"
            
            case isHolidayEnabled = "is_holiday_enabled"
            
            case isAllDpsConsidered = "is_all_dps_considered"
            
        }

        public init(isAllDpsConsidered: Bool? = nil, isHolidayEnabled: Bool? = nil, isPickupCutoffTimeEnabled: Bool? = nil, isServiceTatEnabled: Bool? = nil) {
            
            self.isPickupCutoffTimeEnabled = isPickupCutoffTimeEnabled
            
            self.isServiceTatEnabled = isServiceTatEnabled
            
            self.isHolidayEnabled = isHolidayEnabled
            
            self.isAllDpsConsidered = isAllDpsConsidered
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isPickupCutoffTimeEnabled = try container.decode(Bool.self, forKey: .isPickupCutoffTimeEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isServiceTatEnabled = try container.decode(Bool.self, forKey: .isServiceTatEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isHolidayEnabled = try container.decode(Bool.self, forKey: .isHolidayEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isAllDpsConsidered = try container.decode(Bool.self, forKey: .isAllDpsConsidered)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isPickupCutoffTimeEnabled, forKey: .isPickupCutoffTimeEnabled)
            
            
            
            
            try? container.encodeIfPresent(isServiceTatEnabled, forKey: .isServiceTatEnabled)
            
            
            
            
            try? container.encodeIfPresent(isHolidayEnabled, forKey: .isHolidayEnabled)
            
            
            
            
            try? container.encodeIfPresent(isAllDpsConsidered, forKey: .isAllDpsConsidered)
            
            
        }
        
    }
}


