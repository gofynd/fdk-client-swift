

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var priceMarked: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var itemId: Int

        public var itemSize: String

        public var amountPaid: Double

        public var avlQty: Int

        public var fyndStoreId: String

        public var sku: String

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var discount: Double

        public var transferPrice: Int

        public var companyId: Int

        public var id: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case sku

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case discount

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case id = "_id"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.discount = discount

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.id = id

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var priceMarked: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var itemId: Int

        public var itemSize: String

        public var amountPaid: Double

        public var avlQty: Int

        public var fyndStoreId: String

        public var sku: String

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var discount: Double

        public var transferPrice: Int

        public var companyId: Int

        public var id: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case sku

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case discount

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case id = "_id"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.discount = discount

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.id = id

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
