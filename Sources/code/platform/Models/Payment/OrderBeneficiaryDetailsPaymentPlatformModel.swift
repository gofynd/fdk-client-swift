

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var address: String

        public var title: String

        public var modifiedOn: String

        public var isActive: Bool

        public var accountNo: String

        public var email: String

        public var id: Int

        public var ifscCode: String

        public var comment: String?

        public var displayName: String

        public var transferMode: String

        public var beneficiaryId: String

        public var createdOn: String

        public var accountHolder: String

        public var bankName: String

        public var branchName: String?

        public var subtitle: String

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case address

            case title

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case accountNo = "account_no"

            case email

            case id

            case ifscCode = "ifsc_code"

            case comment

            case displayName = "display_name"

            case transferMode = "transfer_mode"

            case beneficiaryId = "beneficiary_id"

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case subtitle

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.address = address

            self.title = title

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.accountNo = accountNo

            self.email = email

            self.id = id

            self.ifscCode = ifscCode

            self.comment = comment

            self.displayName = displayName

            self.transferMode = transferMode

            self.beneficiaryId = beneficiaryId

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.branchName = branchName

            self.subtitle = subtitle

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var address: String

        public var title: String

        public var modifiedOn: String

        public var isActive: Bool

        public var accountNo: String

        public var email: String

        public var id: Int

        public var ifscCode: String

        public var comment: String?

        public var displayName: String

        public var transferMode: String

        public var beneficiaryId: String

        public var createdOn: String

        public var accountHolder: String

        public var bankName: String

        public var branchName: String?

        public var subtitle: String

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case address

            case title

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case accountNo = "account_no"

            case email

            case id

            case ifscCode = "ifsc_code"

            case comment

            case displayName = "display_name"

            case transferMode = "transfer_mode"

            case beneficiaryId = "beneficiary_id"

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case subtitle

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.address = address

            self.title = title

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.accountNo = accountNo

            self.email = email

            self.id = id

            self.ifscCode = ifscCode

            self.comment = comment

            self.displayName = displayName

            self.transferMode = transferMode

            self.beneficiaryId = beneficiaryId

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.branchName = branchName

            self.subtitle = subtitle

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
