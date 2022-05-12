

import Foundation
public extension ApplicationClient {
    /*
         Model: SizeChartValues
         Used By: Catalog
     */
    class SizeChartValues: Codable {
        public var col4: String?

        public var col6: String?

        public var col5: String?

        public var col3: String?

        public var col2: String?

        public var col1: String?

        public enum CodingKeys: String, CodingKey {
            case col4 = "col_4"

            case col6 = "col_6"

            case col5 = "col_5"

            case col3 = "col_3"

            case col2 = "col_2"

            case col1 = "col_1"
        }

        public init(col1: String? = nil, col2: String? = nil, col3: String? = nil, col4: String? = nil, col5: String? = nil, col6: String? = nil) {
            self.col4 = col4

            self.col6 = col6

            self.col5 = col5

            self.col3 = col3

            self.col2 = col2

            self.col1 = col1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                col4 = try container.decode(String.self, forKey: .col4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col6 = try container.decode(String.self, forKey: .col6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col5 = try container.decode(String.self, forKey: .col5)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col3 = try container.decode(String.self, forKey: .col3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col2 = try container.decode(String.self, forKey: .col2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col1 = try container.decode(String.self, forKey: .col1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(col4, forKey: .col4)

            try? container.encodeIfPresent(col6, forKey: .col6)

            try? container.encodeIfPresent(col5, forKey: .col5)

            try? container.encodeIfPresent(col3, forKey: .col3)

            try? container.encodeIfPresent(col2, forKey: .col2)

            try? container.encodeIfPresent(col1, forKey: .col1)
        }
    }
}
