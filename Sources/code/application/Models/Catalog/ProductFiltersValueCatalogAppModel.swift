

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductFiltersValue
        Used By: Catalog
    */
    class ProductFiltersValue: Codable {
        
        public var min: Int?
        
        public var displayFormat: String?
        
        public var selectedMax: Int?
        
        public var value: String?
        
        public var queryFormat: String?
        
        public var currencySymbol: String?
        
        public var selectedMin: Int?
        
        public var currencyCode: String?
        
        public var isSelected: Bool
        
        public var display: String
        
        public var count: Int?
        
        public var max: Int?
        
        public var logo: Media?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case displayFormat = "display_format"
            
            case selectedMax = "selected_max"
            
            case value = "value"
            
            case queryFormat = "query_format"
            
            case currencySymbol = "currency_symbol"
            
            case selectedMin = "selected_min"
            
            case currencyCode = "currency_code"
            
            case isSelected = "is_selected"
            
            case display = "display"
            
            case count = "count"
            
            case max = "max"
            
            case logo = "logo"
            
        }

        public init(count: Int? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, display: String, displayFormat: String? = nil, isSelected: Bool, logo: Media? = nil, max: Int? = nil, min: Int? = nil, queryFormat: String? = nil, selectedMax: Int? = nil, selectedMin: Int? = nil, value: String? = nil) {
            
            self.min = min
            
            self.displayFormat = displayFormat
            
            self.selectedMax = selectedMax
            
            self.value = value
            
            self.queryFormat = queryFormat
            
            self.currencySymbol = currencySymbol
            
            self.selectedMin = selectedMin
            
            self.currencyCode = currencyCode
            
            self.isSelected = isSelected
            
            self.display = display
            
            self.count = count
            
            self.max = max
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                min = try container.decode(Int.self, forKey: .min)
            
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
                value = try container.decode(String.self, forKey: .value)
            
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
            
            
            
            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
            
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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            isSelected = try container.decode(Bool.self, forKey: .isSelected)
            
            
            
            
            display = try container.decode(String.self, forKey: .display)
            
            
            
            
            do {
                count = try container.decode(Int.self, forKey: .count)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                max = try container.decode(Int.self, forKey: .max)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logo = try container.decode(Media.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
            
            
            
            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}
