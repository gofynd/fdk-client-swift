

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var paymentMode: String

        public var currency: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public var applicationId: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public var paymentGateway: String

        public var paymentId: String?

        public var companyId: String

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var id: String

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case currency

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case id

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.currency = currency

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.companyId = companyId

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.id = id

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var paymentMode: String

        public var currency: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public var applicationId: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public var paymentGateway: String

        public var paymentId: String?

        public var companyId: String

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var id: String

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case currency

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case id

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.currency = currency

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.companyId = companyId

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.id = id

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}
