

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var id: String

        public var companyId: Int

        public var priceMarked: Double

        public var sku: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var quantity: Int

        public var itemId: Int

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case sku

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case identifier

            case itemSize = "item_size"

            case discount

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case quantity

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.sku = sku

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.quantity = quantity

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var id: String

        public var companyId: Int

        public var priceMarked: Double

        public var sku: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var quantity: Int

        public var itemId: Int

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case sku

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case identifier

            case itemSize = "item_size"

            case discount

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case quantity

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.sku = sku

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.quantity = quantity

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
