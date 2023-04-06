

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var affiliateStoreId: String

        public var avlQty: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var sku: String

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var companyId: Int

        public var storeId: Int

        public var quantity: Int

        public var modifiedOn: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case identifier

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case discount

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case sku

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case storeId = "store_id"

            case quantity

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.storeId = storeId

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var affiliateStoreId: String

        public var avlQty: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var sku: String

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var companyId: Int

        public var storeId: Int

        public var quantity: Int

        public var modifiedOn: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case identifier

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case discount

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case sku

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case storeId = "store_id"

            case quantity

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.storeId = storeId

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
