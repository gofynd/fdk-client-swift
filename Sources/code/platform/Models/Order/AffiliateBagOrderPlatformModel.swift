

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var companyId: Int

        public var quantity: Int

        public var transferPrice: Int

        public var sku: String

        public var itemId: Int

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var id: String

        public var avlQty: Int

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var hsnCodeId: String

        public var unitPrice: Double

        public var storeId: Int

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case quantity

            case transferPrice = "transfer_price"

            case sku

            case itemId = "item_id"

            case discount

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case id = "_id"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.sku = sku

            self.itemId = itemId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.id = id

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var companyId: Int

        public var quantity: Int

        public var transferPrice: Int

        public var sku: String

        public var itemId: Int

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var id: String

        public var avlQty: Int

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var hsnCodeId: String

        public var unitPrice: Double

        public var storeId: Int

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case quantity

            case transferPrice = "transfer_price"

            case sku

            case itemId = "item_id"

            case discount

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case id = "_id"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.sku = sku

            self.itemId = itemId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.id = id

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
