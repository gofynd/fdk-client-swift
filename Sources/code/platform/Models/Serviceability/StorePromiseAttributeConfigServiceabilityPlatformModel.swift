

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePromiseAttributeConfig
        Used By: Serviceability
    */

    class StorePromiseAttributeConfig: Codable {
        
        
        public var isOperationalTimingEnabled: Bool?
        
        public var isOrderAcceptanceTimingEnabled: Bool?
        
        public var isAverageProcessingTime: Bool?
        
        public var isHolidayEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isOperationalTimingEnabled = "is_operational_timing_enabled"
            
            case isOrderAcceptanceTimingEnabled = "is_order_acceptance_timing_enabled"
            
            case isAverageProcessingTime = "is_average_processing_time"
            
            case isHolidayEnabled = "is_holiday_enabled"
            
        }

        public init(isAverageProcessingTime: Bool? = nil, isHolidayEnabled: Bool? = nil, isOperationalTimingEnabled: Bool? = nil, isOrderAcceptanceTimingEnabled: Bool? = nil) {
            
            self.isOperationalTimingEnabled = isOperationalTimingEnabled
            
            self.isOrderAcceptanceTimingEnabled = isOrderAcceptanceTimingEnabled
            
            self.isAverageProcessingTime = isAverageProcessingTime
            
            self.isHolidayEnabled = isHolidayEnabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isOperationalTimingEnabled = try container.decode(Bool.self, forKey: .isOperationalTimingEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isOrderAcceptanceTimingEnabled = try container.decode(Bool.self, forKey: .isOrderAcceptanceTimingEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isAverageProcessingTime = try container.decode(Bool.self, forKey: .isAverageProcessingTime)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isOperationalTimingEnabled, forKey: .isOperationalTimingEnabled)
            
            
            
            
            try? container.encodeIfPresent(isOrderAcceptanceTimingEnabled, forKey: .isOrderAcceptanceTimingEnabled)
            
            
            
            
            try? container.encodeIfPresent(isAverageProcessingTime, forKey: .isAverageProcessingTime)
            
            
            
            
            try? container.encodeIfPresent(isHolidayEnabled, forKey: .isHolidayEnabled)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePromiseAttributeConfig
        Used By: Serviceability
    */

    class StorePromiseAttributeConfig: Codable {
        
        
        public var isOperationalTimingEnabled: Bool?
        
        public var isOrderAcceptanceTimingEnabled: Bool?
        
        public var isAverageProcessingTime: Bool?
        
        public var isHolidayEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isOperationalTimingEnabled = "is_operational_timing_enabled"
            
            case isOrderAcceptanceTimingEnabled = "is_order_acceptance_timing_enabled"
            
            case isAverageProcessingTime = "is_average_processing_time"
            
            case isHolidayEnabled = "is_holiday_enabled"
            
        }

        public init(isAverageProcessingTime: Bool? = nil, isHolidayEnabled: Bool? = nil, isOperationalTimingEnabled: Bool? = nil, isOrderAcceptanceTimingEnabled: Bool? = nil) {
            
            self.isOperationalTimingEnabled = isOperationalTimingEnabled
            
            self.isOrderAcceptanceTimingEnabled = isOrderAcceptanceTimingEnabled
            
            self.isAverageProcessingTime = isAverageProcessingTime
            
            self.isHolidayEnabled = isHolidayEnabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isOperationalTimingEnabled = try container.decode(Bool.self, forKey: .isOperationalTimingEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isOrderAcceptanceTimingEnabled = try container.decode(Bool.self, forKey: .isOrderAcceptanceTimingEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isAverageProcessingTime = try container.decode(Bool.self, forKey: .isAverageProcessingTime)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isOperationalTimingEnabled, forKey: .isOperationalTimingEnabled)
            
            
            
            
            try? container.encodeIfPresent(isOrderAcceptanceTimingEnabled, forKey: .isOrderAcceptanceTimingEnabled)
            
            
            
            
            try? container.encodeIfPresent(isAverageProcessingTime, forKey: .isAverageProcessingTime)
            
            
            
            
            try? container.encodeIfPresent(isHolidayEnabled, forKey: .isHolidayEnabled)
            
            
        }
        
    }
}


