

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var allStatus: [String]

        public var paymentMode: String

        public var collectedBy: String

        public var refundedBy: String

        public var paymentModeIdentifier: String

        public var id: String

        public var paymentId: String?

        public var paymentGateway: String

        public var createdOn: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var userObject: [String: Any]

        public var companyId: String

        public var currentStatus: String

        public var applicationId: String

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case paymentModeIdentifier = "payment_mode_identifier"

            case id

            case paymentId = "payment_id"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case userObject = "user_object"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case applicationId = "application_id"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.paymentModeIdentifier = paymentModeIdentifier

            self.id = id

            self.paymentId = paymentId

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.userObject = userObject

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var allStatus: [String]

        public var paymentMode: String

        public var collectedBy: String

        public var refundedBy: String

        public var paymentModeIdentifier: String

        public var id: String

        public var paymentId: String?

        public var paymentGateway: String

        public var createdOn: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var userObject: [String: Any]

        public var companyId: String

        public var currentStatus: String

        public var applicationId: String

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case paymentModeIdentifier = "payment_mode_identifier"

            case id

            case paymentId = "payment_id"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case userObject = "user_object"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case applicationId = "application_id"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.paymentModeIdentifier = paymentModeIdentifier

            self.id = id

            self.paymentId = paymentId

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.userObject = userObject

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}
