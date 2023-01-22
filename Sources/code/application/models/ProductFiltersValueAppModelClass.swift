

import Foundation
public extension ApplicationClient {
    /*
        Model: ProductFiltersValue
        Used By: Catalog
    */
    class ProductFiltersValue: Codable {
        
        public var display: String
        
        public var value: String?
        
        public var selectedMin: Int?
        
        public var currencySymbol: String?
        
        public var displayFormat: String?
        
        public var selectedMax: Int?
        
        public var min: Int?
        
        public var queryFormat: String?
        
        public var isSelected: Bool
        
        public var max: Int?
        
        public var count: Int?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case value = "value"
            
            case selectedMin = "selected_min"
            
            case currencySymbol = "currency_symbol"
            
            case displayFormat = "display_format"
            
            case selectedMax = "selected_max"
            
            case min = "min"
            
            case queryFormat = "query_format"
            
            case isSelected = "is_selected"
            
            case max = "max"
            
            case count = "count"
            
            case currencyCode = "currency_code"
            
        }

        public init(count: Int? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, display: String, displayFormat: String? = nil, isSelected: Bool, max: Int? = nil, min: Int? = nil, queryFormat: String? = nil, selectedMax: Int? = nil, selectedMin: Int? = nil, value: String? = nil) {
            
            self.display = display
            
            self.value = value
            
            self.selectedMin = selectedMin
            
            self.currencySymbol = currencySymbol
            
            self.displayFormat = displayFormat
            
            self.selectedMax = selectedMax
            
            self.min = min
            
            self.queryFormat = queryFormat
            
            self.isSelected = isSelected
            
            self.max = max
            
            self.count = count
            
            self.currencyCode = currencyCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            display = try container.decode(String.self, forKey: .display)
            
            
            
            
            do {
                value = try container.decode(String.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                selectedMin = try container.decode(Int.self, forKey: .selectedMin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayFormat = try container.decode(String.self, forKey: .displayFormat)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                min = try container.decode(Int.self, forKey: .min)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                queryFormat = try container.decode(String.self, forKey: .queryFormat)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            isSelected = try container.decode(Bool.self, forKey: .isSelected)
            
            
            
            
            do {
                max = try container.decode(Int.self, forKey: .max)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                count = try container.decode(Int.self, forKey: .count)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
            
            
            
            
            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
}
