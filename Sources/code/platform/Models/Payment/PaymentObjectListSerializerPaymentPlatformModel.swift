

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentMode: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var userObject: [String: Any]

        public var paymentId: String?

        public var collectedBy: String

        public var amountInPaisa: String

        public var refundedBy: String

        public var currency: String

        public var id: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var refundObject: [String: Any]?

        public var companyId: String

        public var applicationId: String

        public var allStatus: [String]

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case userObject = "user_object"

            case paymentId = "payment_id"

            case collectedBy = "collected_by"

            case amountInPaisa = "amount_in_paisa"

            case refundedBy = "refunded_by"

            case currency

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case refundObject = "refund_object"

            case companyId = "company_id"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case createdOn = "created_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.userObject = userObject

            self.paymentId = paymentId

            self.collectedBy = collectedBy

            self.amountInPaisa = amountInPaisa

            self.refundedBy = refundedBy

            self.currency = currency

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.refundObject = refundObject

            self.companyId = companyId

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currency = try container.decode(String.self, forKey: .currency)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentMode: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var userObject: [String: Any]

        public var paymentId: String?

        public var collectedBy: String

        public var amountInPaisa: String

        public var refundedBy: String

        public var currency: String

        public var id: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var refundObject: [String: Any]?

        public var companyId: String

        public var applicationId: String

        public var allStatus: [String]

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case userObject = "user_object"

            case paymentId = "payment_id"

            case collectedBy = "collected_by"

            case amountInPaisa = "amount_in_paisa"

            case refundedBy = "refunded_by"

            case currency

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case refundObject = "refund_object"

            case companyId = "company_id"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case createdOn = "created_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.userObject = userObject

            self.paymentId = paymentId

            self.collectedBy = collectedBy

            self.amountInPaisa = amountInPaisa

            self.refundedBy = refundedBy

            self.currency = currency

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.refundObject = refundObject

            self.companyId = companyId

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currency = try container.decode(String.self, forKey: .currency)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
