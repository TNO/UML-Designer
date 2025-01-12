#! /usr/bin/env sh
CORE_UPDATE_SITE_DIR=packaging/org.obeonetwork.dsl.uml2.core.update/target/
UPDATE_SITE_DIR=packaging/org.obeonetwork.dsl.uml2.update/target/
DISCOVERY_UPDATE_SITE_DIR=packaging/org.obeonetwork.dsl.uml2.discovery.update/target/
DISCOVERY=plugins/org.obeonetwork.dsl.uml2.discovery/discovery.xmi
DISCOVERY_IMAGES=plugins/org.obeonetwork.dsl.uml2.discovery/images/
TP=releng/org.obeonetwork.dsl.uml2.target/umldesigner-capella-2023-03.tpd
CORE_TP=releng/org.obeonetwork.dsl.uml2.core.target/umlcoredesigner-capella-2023-03.tpd
BUNDLE_DIR=packaging/org.obeonetwork.dsl.uml2.product/target/products/*.zip
DEPLOY_LOCAL_DIR=$1
echo "Prepare deploy local dir = ${DEPLOY_LOCAL_DIR}"
# Create nightly folder
mkdir $DEPLOY_LOCAL_DIR 
mkdir $DEPLOY_LOCAL_DIR/core 
# Copy update-site and target platform to deploy local dir
cp -r $CORE_UPDATE_SITE_DIR/repository $DEPLOY_LOCAL_DIR/core
cp -r $CORE_UPDATE_SITE_DIR/*.zip $DEPLOY_LOCAL_DIR
cp -r $DISCOVERY_UPDATE_SITE_DIR/repository $DEPLOY_LOCAL_DIR/discovery
cp -r $DISCOVERY_UPDATE_SITE_DIR/*.zip $DEPLOY_LOCAL_DIR
cp -r $DISCOVERY $DEPLOY_LOCAL_DIR
cp -r $DISCOVERY_IMAGES $DEPLOY_LOCAL_DIR/images
cp -r $UPDATE_SITE_DIR/repository $DEPLOY_LOCAL_DIR
cp -r $UPDATE_SITE_DIR/*.zip $DEPLOY_LOCAL_DIR
cp -r $CORE_TP $DEPLOY_LOCAL_DIR
cp -r $TP $DEPLOY_LOCAL_DIR
#cp -r UMLDesigner.zip $DEPLOY_LOCAL_DIR
echo "ls ${DEPLOY_LOCAL_DIR}"
ls $DEPLOY_LOCAL_DIR
# Create bundles folder
#mkdir $DEPLOY_LOCAL_DIR/bundles
# Copy bundles
#mv $TRAVIS_BUILD_DIR/UMLDesigner-macosx.cocoa.x86_64.dmg.zip $DEPLOY_LOCAL_DIR/bundles
#cp -r $BUNDLE_DIR $DEPLOY_LOCAL_DIR/bundles
#echo "ls ${DEPLOY_LOCAL_DIR}/bundles"
#ls $DEPLOY_LOCAL_DIR/bundles
