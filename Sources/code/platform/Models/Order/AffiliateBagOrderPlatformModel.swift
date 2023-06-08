

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var itemSize: String

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var id: String

        public var discount: Double

        public var priceEffective: Double

        public var quantity: Int

        public var avlQty: Int

        public var companyId: Int

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case id = "_id"

            case discount

            case priceEffective = "price_effective"

            case quantity

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.id = id

            self.discount = discount

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.avlQty = avlQty

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var itemSize: String

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var id: String

        public var discount: Double

        public var priceEffective: Double

        public var quantity: Int

        public var avlQty: Int

        public var companyId: Int

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case id = "_id"

            case discount

            case priceEffective = "price_effective"

            case quantity

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.id = id

            self.discount = discount

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.avlQty = avlQty

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
