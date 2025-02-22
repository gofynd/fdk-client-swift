

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: SizeChartValues
        Used By: Catalog
    */
    class SizeChartValues: Codable {
        
        public var col3: String?
        
        public var col6: String?
        
        public var col7: String?
        
        public var col8: String?
        
        public var col9: String?
        
        public var col10: String?
        
        public var col2: String?
        
        public var col4: String?
        
        public var col1: String?
        
        public var col5: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case col3 = "col_3"
            
            case col6 = "col_6"
            
            case col7 = "col_7"
            
            case col8 = "col_8"
            
            case col9 = "col_9"
            
            case col10 = "col_10"
            
            case col2 = "col_2"
            
            case col4 = "col_4"
            
            case col1 = "col_1"
            
            case col5 = "col_5"
            
        }

        public init(col1: String? = nil, col10: String? = nil, col2: String? = nil, col3: String? = nil, col4: String? = nil, col5: String? = nil, col6: String? = nil, col7: String? = nil, col8: String? = nil, col9: String? = nil) {
            
            self.col3 = col3
            
            self.col6 = col6
            
            self.col7 = col7
            
            self.col8 = col8
            
            self.col9 = col9
            
            self.col10 = col10
            
            self.col2 = col2
            
            self.col4 = col4
            
            self.col1 = col1
            
            self.col5 = col5
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                col3 = try container.decode(String.self, forKey: .col3)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col6 = try container.decode(String.self, forKey: .col6)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col7 = try container.decode(String.self, forKey: .col7)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col8 = try container.decode(String.self, forKey: .col8)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col9 = try container.decode(String.self, forKey: .col9)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col10 = try container.decode(String.self, forKey: .col10)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col2 = try container.decode(String.self, forKey: .col2)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col4 = try container.decode(String.self, forKey: .col4)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col1 = try container.decode(String.self, forKey: .col1)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                col5 = try container.decode(String.self, forKey: .col5)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(col3, forKey: .col3)
            
            
            
            try? container.encodeIfPresent(col6, forKey: .col6)
            
            
            
            try? container.encodeIfPresent(col7, forKey: .col7)
            
            
            
            try? container.encodeIfPresent(col8, forKey: .col8)
            
            
            
            try? container.encodeIfPresent(col9, forKey: .col9)
            
            
            
            try? container.encodeIfPresent(col10, forKey: .col10)
            
            
            
            try? container.encodeIfPresent(col2, forKey: .col2)
            
            
            
            try? container.encodeIfPresent(col4, forKey: .col4)
            
            
            
            try? container.encodeIfPresent(col1, forKey: .col1)
            
            
            
            try? container.encodeIfPresent(col5, forKey: .col5)
            
            
        }
        
    }
}
