

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var applicationId: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var companyId: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var id: String

        public var createdOn: String

        public var amountInPaisa: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var currency: String

        public var paymentGateway: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case id

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case currency

            case paymentGateway = "payment_gateway"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.userObject = userObject

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.id = id

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.currency = currency

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var applicationId: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var companyId: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var id: String

        public var createdOn: String

        public var amountInPaisa: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var currency: String

        public var paymentGateway: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case id

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case currency

            case paymentGateway = "payment_gateway"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.userObject = userObject

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.id = id

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.currency = currency

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}
