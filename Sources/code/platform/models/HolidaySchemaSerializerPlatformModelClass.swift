

import Foundation
public extension PlatformClient {
    /*
        Model: HolidaySchemaSerializer
        Used By: CompanyProfile
    */

    class HolidaySchemaSerializer: Codable {
        
        
        public var date: HolidayDateSerializer
        
        public var holidayType: String
        
        public var title: String
        

        public enum CodingKeys: String, CodingKey {
            
            case date = "date"
            
            case holidayType = "holiday_type"
            
            case title = "title"
            
        }

        public init(date: HolidayDateSerializer, holidayType: String, title: String) {
            
            self.date = date
            
            self.holidayType = holidayType
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                date = try container.decode(HolidayDateSerializer.self, forKey: .date)
                
            
            
            
                holidayType = try container.decode(String.self, forKey: .holidayType)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(holidayType, forKey: .holidayType)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}
