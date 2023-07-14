

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreditNoteData
         Used By: Order
     */

    class CreditNoteData: Codable {
        public var dateOfIssue: String?

        public var expiryDate: String?

        public var totalBalance: Double?

        public var validity: Int?

        public enum CodingKeys: String, CodingKey {
            case dateOfIssue = "date_of_issue"

            case expiryDate = "expiry_date"

            case totalBalance = "total_balance"

            case validity
        }

        public init(dateOfIssue: String? = nil, expiryDate: String? = nil, totalBalance: Double? = nil, validity: Int? = nil) {
            self.dateOfIssue = dateOfIssue

            self.expiryDate = expiryDate

            self.totalBalance = totalBalance

            self.validity = validity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateOfIssue = try container.decode(String.self, forKey: .dateOfIssue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiryDate = try container.decode(String.self, forKey: .expiryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalBalance = try container.decode(Double.self, forKey: .totalBalance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validity = try container.decode(Int.self, forKey: .validity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateOfIssue, forKey: .dateOfIssue)

            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)

            try? container.encodeIfPresent(totalBalance, forKey: .totalBalance)

            try? container.encodeIfPresent(validity, forKey: .validity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreditNoteData
         Used By: Order
     */

    class CreditNoteData: Codable {
        public var dateOfIssue: String?

        public var expiryDate: String?

        public var totalBalance: Double?

        public var validity: Int?

        public enum CodingKeys: String, CodingKey {
            case dateOfIssue = "date_of_issue"

            case expiryDate = "expiry_date"

            case totalBalance = "total_balance"

            case validity
        }

        public init(dateOfIssue: String? = nil, expiryDate: String? = nil, totalBalance: Double? = nil, validity: Int? = nil) {
            self.dateOfIssue = dateOfIssue

            self.expiryDate = expiryDate

            self.totalBalance = totalBalance

            self.validity = validity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateOfIssue = try container.decode(String.self, forKey: .dateOfIssue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiryDate = try container.decode(String.self, forKey: .expiryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalBalance = try container.decode(Double.self, forKey: .totalBalance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validity = try container.decode(Int.self, forKey: .validity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateOfIssue, forKey: .dateOfIssue)

            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)

            try? container.encodeIfPresent(totalBalance, forKey: .totalBalance)

            try? container.encodeIfPresent(validity, forKey: .validity)
        }
    }
}
