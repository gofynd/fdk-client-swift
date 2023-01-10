

import Foundation
public extension ApplicationClient {
    /*
         Model: ColumnHeaders
         Used By: Catalog
     */
    class ColumnHeaders: Codable {
        public var col4: ColumnHeader?

        public var col6: ColumnHeader?

        public var col5: ColumnHeader?

        public var col3: ColumnHeader?

        public var col2: ColumnHeader?

        public var col1: ColumnHeader?

        public enum CodingKeys: String, CodingKey {
            case col4 = "col_4"

            case col6 = "col_6"

            case col5 = "col_5"

            case col3 = "col_3"

            case col2 = "col_2"

            case col1 = "col_1"
        }

        public init(col1: ColumnHeader? = nil, col2: ColumnHeader? = nil, col3: ColumnHeader? = nil, col4: ColumnHeader? = nil, col5: ColumnHeader? = nil, col6: ColumnHeader? = nil) {
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
                col4 = try container.decode(ColumnHeader.self, forKey: .col4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col6 = try container.decode(ColumnHeader.self, forKey: .col6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col5 = try container.decode(ColumnHeader.self, forKey: .col5)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col3 = try container.decode(ColumnHeader.self, forKey: .col3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col2 = try container.decode(ColumnHeader.self, forKey: .col2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col1 = try container.decode(ColumnHeader.self, forKey: .col1)

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
