

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: HolidaySchemaSchema
        Used By: CompanyProfile
    */

    class HolidaySchemaSchema: Codable {
        
        
        public var date: HolidayDateSchema
        
        public var title: String
        
        public var holidayType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case date = "date"
            
            case title = "title"
            
            case holidayType = "holiday_type"
            
        }

        public init(date: HolidayDateSchema, holidayType: String, title: String) {
            
            self.date = date
            
            self.title = title
            
            self.holidayType = holidayType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                date = try container.decode(HolidayDateSchema.self, forKey: .date)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                holidayType = try container.decode(String.self, forKey: .holidayType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(holidayType, forKey: .holidayType)
            
            
        }
        
    }
}




